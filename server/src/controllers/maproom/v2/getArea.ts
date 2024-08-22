import { KoaController } from "../../../utils/KoaController";
import { User } from "../../../models/user.model";
import { WorldMapCell } from "../../../models/worldmapcell.model";
import { ORMContext } from "../../../server";
import { devConfig } from "../../../config/DevSettings";
import {
  buildCellPayload,
  getNoise,
  getTerrainHeight,
} from "../../../config/WorldGenSettings";
import { STATUS } from "../../../enums/StatusCodes";

interface Cell {
  x?: number;
  y?: number;
  width?: number;
  height?: number;
  sendresources?: number;
}

// We ignore what's requested by the client as it's already hardcoded to 10x10
const width = 10;
const height = 10;

export const getArea: KoaController = async (ctx) => {
  const user: User = ctx.authUser;
  const requestBody: Cell = ctx.request.body;
  await ORMContext.em.populate(user, ["save"]);

  const save = user.save;

  // TODO: Use zod to sort this out
  for (const key in requestBody) {
    requestBody[key] = parseInt(requestBody[key], 10) || 0;
  }

  const currentX = requestBody.x;
  const currentY = requestBody.y;

  const sendresources = requestBody.sendresources || 0;

  const dbCells = await ORMContext.em.find(WorldMapCell, {
    x: {
      $gte: currentX,
      $lte: currentX + width,
    },
    y: {
      $gte: currentY,
      $lte: currentY + height,
    },
    world_id: save.worldid,
  });

  /**
   * First, we get the cells which have been stored in the database.
   * These cells include: homebase, attacked wild monsters, and outposts.
   * All of which require persistance.
   */
  const cells = {};
  for (const cell of dbCells) {
    if (!cells[cell.x]) cells[cell.x] = {};
    cells[cell.x][cell.y] = await buildCellPayload(cell, ctx);
  }

  /**
   * Then, we fill the remaining cells in-memory, without persisting to the database.
   */
  const noise = getNoise(user.save.worldid);
  for (let cellX = currentX; cellX <= currentX + width; cellX++) {
    // We need to create the x object to append the y cell to if it does not exist
    if (!cells[cellX]) cells[cellX] = {};
    for (let cellY = currentY; cellY <= currentY + height; cellY++) {
      // The cell already exists, skip it
      if (cells[cellX][cellY]) continue;
      const terrainHeight = getTerrainHeight(noise, cellX, cellY);
      // Create a cell in memory, skip the world being added for saving memory
      const inMemoryCell = new WorldMapCell(
        undefined,
        cellX,
        cellY,
        terrainHeight
      );
      cells[cellX][cellY] = await buildCellPayload(inMemoryCell, ctx);
    }
  }

  if (devConfig.maproom) {
    ctx.status = STATUS.OK;
    ctx.body = {
      error: 0,
      x: currentX,
      y: currentY,
      data: cells,
    };

    if (sendresources === 1) {
      ctx.body["resources"] = save.resources;
      ctx.body["credits"] = save.credits;
    }
  } else {
    ctx.status = STATUS.NOT_FOUND;
    ctx.body = { message: "MapRoom is not enabled on this server", error: 1 };
  }
};
