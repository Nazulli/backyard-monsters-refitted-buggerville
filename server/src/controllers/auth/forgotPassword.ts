import z from "zod";
import nodemailer from "nodemailer";
import path from "path";
import JWT from "jsonwebtoken";

import { Status } from "../../enums/StatusCodes";
import { KoaController } from "../../utils/KoaController";
import { errorLog } from "../../utils/logger";
import { Env } from "../../enums/Env";
import { promises as fs } from "fs";
import { ORMContext } from "../../server";
import { User } from "../../models/user.model";
import { authFailureErr } from "../../errors/errors";

const ForgotPasswordSchema = z.object({
  email: z.string().email().toLowerCase(),
});

/** SMTP transporter configuration */
const transporter = nodemailer.createTransport({
  host: process.env.SMTP_HOST,
  port: parseInt(process.env.SMTP_PORT),
  auth: {
    user: process.env.SMTP_USER,
    pass: process.env.SMTP_PASSWORD,
  },
  tls: { rejectUnauthorized: false },
  secure: process.env.ENV === Env.PROD,
  connectionTimeout: 30000,
});

/**
 * Controller to handle forgot password functionality.
 *
 * This controller validates the email provided in the request body,
 * generates a short-lived JWT token, stores the token in the database
 * associated with the user's email, reads the HTML template for the
 * password reset email, replaces the placeholder with the reset link,
 * and sends the email using the configured SMTP transporter.
 *
 * @param {Object} ctx - Koa context object.
 * @returns {Promise<void>} - A promise that resolves when the email is sent or an error occurs.
 */
export const forgotPassword: KoaController = async (ctx) => {
  try {
    const { email } = ForgotPasswordSchema.parse(ctx.request.body);

    // Generate a short-lived JWT token
    const token = JWT.sign(
      { email },
      process.env.SECRET_KEY || "MISSING_SECRET",
      { expiresIn: "10m" }
    );

    // Store the token in the database associated with the user's email
    const user = await ORMContext.em.findOne(User, { email });
    if (!user) authFailureErr();

    user.resetToken = token;
    await ORMContext.em.persistAndFlush(user);

    // Read the HTML template
    const templatePath = "../../templates/forgot-password.html";
    const template = path.join(__dirname, templatePath);
    const html = await fs.readFile(template, "utf-8");

    // Send user token in email
    const resetLink = `${process.env.WEB_URL}/reset-password?token=${token}`;
    const emailHtml = html.replace("{{resetLink}}", resetLink);

    const mailOptions = {
      from: "Backyard Monsters Refitted <info@bymrefitted.com>",
      to: email,
      subject: "Password reset request | BYM Refitted",
      html: emailHtml,
    };

    // Send the email
    await transporter.sendMail(mailOptions);

    ctx.status = Status.OK;
    ctx.body = { message: "Password reset email sent successfully." };
  } catch (error) {
    errorLog(`Error in forgotPassword controller: ${error}`);
    ctx.status = Status.BAD_REQUEST;
    ctx.body = {
      message: "An error occurred while attempting to send an email.",
    };
  }
};
