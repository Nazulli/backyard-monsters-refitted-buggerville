package
{
   public class INFERNO_QUESTS
   {
      
      public static var _infernoQuests:Array = [{
         "order":2,
         "list":true,
         "reward":[2000,2000,0,0,0],
         "id":"IT1",
         "group":0,
         "name":"q_build_name",
         "description":"q_build_description",
         "hint":"q_build_hint",
         "keyvars":{
            "v1":KEYS.Get("#bi_snipertower#"),
            "v2":"1",
            "v3":"Defensive"
         },
         "questimage":"building-sharpshooter.png",
         "questicon":"icon-sharpshooter.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/sharpshooter.png",
         "rules":{"b21lvl":1}
      },{
         "order":3,
         "list":true,
         "reward":[2000,2000,2000,2000,0],
         "id":"ICR3",
         "group":0,
         "name":"q_build_name",
         "description":"q_build_description",
         "hint":"q_build_hint",
         "keyvars":{
            "v1":KEYS.Get("#bi_housing#"),
            "v2":"1",
            "v3":"Buildings"
         },
         "questimage":"building-compound.png",
         "questicon":"icon-compound.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/compound.png",
         "rules":{"b128lvl":1}
      },{
         "order":4,
         "list":true,
         "reward":[1000,1000,0,1000,0],
         "id":"ICR2",
         "group":0,
         "name":"q_build_name",
         "description":"q_build_description",
         "hint":"q_build_hint",
         "keyvars":{
            "v1":KEYS.Get("#bi_hatchery#"),
            "v2":"1",
            "v3":"Buildings"
         },
         "questimage":"building-incubator.png",
         "questicon":"icon-incubator.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/incubator.png",
         "rules":{"b13lvl":1}
      },{
         "order":5,
         "list":true,
         "reward":[8000,8000,8000,8000,0],
         "id":"IC3",
         "group":0,
         "name":"q_c3_name",
         "description":"q_c3_description",
         "hint":"q_c3_hint",
         "questimage":"nextlevel2.v2.png",
         "questicon":"icon_nextlevel.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/nextlevel2.png",
         "rules":{
            "b1lvl":2,
            "b2lvl":2,
            "b3lvl":2,
            "b4lvl":2
         }
      },{
         "order":6,
         "list":true,
         "reward":[2000,2000,0,0,0],
         "id":"IT2",
         "group":0,
         "name":"q_build_name",
         "description":"q_build_description",
         "hint":"q_build_hint",
         "keyvars":{
            "v1":KEYS.Get("#bi_cannontower#"),
            "v2":"1",
            "v3":"Defensive"
         },
         "questimage":"building-blast_tower.png",
         "questicon":"icon-blast_tower.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/blast_tower.png",
         "rules":{"b130lvl":1}
      },{
         "order":8,
         "list":true,
         "reward":[4000,4000,0,500,0],
         "id":"IC13",
         "group":0,
         "name":"q_upgrade_name",
         "description":"q_upgrade_description",
         "hint":"q_upgrade_hint",
         "keyvars":{
            "v1":KEYS.Get("#bi_townhall#"),
            "v2":"2",
            "v3":"Buildings"
         },
         "questimage":"building-under_hall1.png",
         "questicon":"icon-under_hall1.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/under_hall1.png",
         "rules":{"b14lvl":2}
      },{
         "order":9,
         "prereq":"IC13",
         "list":true,
         "reward":[1000,1000,5000,0,0],
         "id":"ICR1",
         "group":0,
         "name":"q_upgrade_name",
         "description":"q_build_description",
         "hint":"q_build_hint",
         "keyvars":{
            "v1":KEYS.Get("#bi_monsterlocker#"),
            "v2":"1",
            "v3":"Buildings"
         },
         "questimage":"building-strongbox.png",
         "questicon":"icon-strongbox.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/strongbox.png",
         "rules":{"b8lvl":1}
      },{
         "order":10,
         "prereq":"ICR1",
         "list":true,
         "reward":[0,0,0,0,0],
         "id":"IUC2",
         "group":0,
         "name":"q_unlock_name",
         "description":"q_unlock_idescription",
         "hint":"inf_q_unlock_hint",
         "keyvars":{"v1":KEYS.Get("#mi_Zagnoid#")},
         "questimage":"inferno_monster2.png",
         "questicon":"icon_IC2.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/zagnoid.v3.png",
         "rules":{"UNLOCK":"IC2"},
         "reward_creatureid":"IC2",
         "monster_reward":10
      },{
         "order":11,
         "prereq":"IUC2",
         "list":true,
         "reward":[0,0,0,0,0],
         "id":"IUC3",
         "group":0,
         "name":"q_unlock_name",
         "description":"q_unlock_idescription",
         "hint":"inf_q_unlock_hint",
         "keyvars":{"v1":KEYS.Get("#mi_Malphus#")},
         "questimage":"inferno_monster3.png",
         "questicon":"icon_IC3.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/malphus.png",
         "rules":{"UNLOCK":"IC3"},
         "reward_creatureid":"IC3",
         "monster_reward":10
      },{
         "order":12,
         "list":true,
         "reward":[10000,0,0,0,0],
         "id":"IC9",
         "group":0,
         "name":"q_upgrade_name",
         "description":"q_upgrade_description",
         "hint":"q_upgrade_hint",
         "keyvars":{
            "v1":KEYS.Get("#bi_boneharvester#"),
            "v2":"3",
            "v3":"Resources"
         },
         "questimage":"building-bone-cruncher.png",
         "questicon":"icon-bone_cruncher.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/bone_cruncher.png",
         "rules":{"b1lvl":3}
      },{
         "order":13,
         "list":true,
         "reward":[0,10000,0,0,0],
         "id":"IC10",
         "group":0,
         "name":"q_upgrade_name",
         "description":"q_upgrade_description",
         "hint":"q_upgrade_hint",
         "keyvars":{
            "v1":KEYS.Get("#bi_coalharvester#"),
            "v2":"3",
            "v3":"Resources"
         },
         "questimage":"building-coal-extractor.png",
         "questicon":"icon-coal_extractor.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/coal_extractor.png",
         "rules":{"b2lvl":3}
      },{
         "order":14,
         "list":true,
         "reward":[0,0,2500,0,0],
         "id":"IC11",
         "group":0,
         "name":"q_upgrade_name",
         "description":"q_upgrade_description",
         "hint":"q_upgrade_hint",
         "keyvars":{
            "v1":KEYS.Get("#bi_sulfurharvester#"),
            "v2":"3",
            "v3":"Resources"
         },
         "questimage":"building-sulfur-swirler.png",
         "questicon":"icon-sulfur_swirler.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/sulfur_swirler.png",
         "rules":{"b3lvl":3}
      },{
         "order":15,
         "list":true,
         "reward":[0,0,0,2000,0],
         "id":"IC12",
         "group":0,
         "name":"q_upgrade_name",
         "description":"q_upgrade_description",
         "hint":"q_upgrade_hint",
         "keyvars":{
            "v1":KEYS.Get("#bi_magmaharverster#"),
            "v2":"3",
            "v3":"Resources"
         },
         "questimage":"building-magma-pump.png",
         "questicon":"icon-magma_pump.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/magma_pump.png",
         "rules":{"b4lvl":3}
      },{
         "order":16,
         "prereq":"IS1",
         "list":true,
         "reward":[4000,4000,2000,2000,0],
         "id":"IS2",
         "group":0,
         "name":"q_upgrade_name",
         "description":"q_upgrade_description",
         "hint":"q_upgrade_hint",
         "keyvars":{
            "v1":KEYS.Get("#bi_storagesilo#"),
            "v2":"3",
            "v3":"Resources"
         },
         "questimage":"building-resource_pod.png",
         "questicon":"icon-resource_pod.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/resource_pod.png",
         "rules":{"b6lvl":2}
      },{
         "order":17,
         "list":true,
         "reward":[1000,1000,1000,1000,0],
         "id":"IBK1",
         "group":0,
         "name":"q_bk1_name",
         "description":"q_bk1_description",
         "hint":"q_bk1_hint",
         "questimage":"gatherer.png",
         "questicon":"icon_wallstreet.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/gatherer.png",
         "rules":{"singleclickbank":1000}
      },{
         "order":18,
         "prereq":"IC9",
         "list":true,
         "reward":[20000,0,0,0,0],
         "id":"IC4",
         "group":0,
         "name":"q_upgrade_name",
         "description":"q_upgrade_description",
         "hint":"q_upgrade_hint",
         "keyvars":{
            "v1":KEYS.Get("#bi_boneharvester#"),
            "v2":"4",
            "v3":"Resources"
         },
         "questimage":"building-bone-cruncher.png",
         "questicon":"icon-bone_cruncher.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/bone_cruncher.png",
         "rules":{"b1lvl":4}
      },{
         "order":19,
         "prereq":"IC10",
         "list":true,
         "reward":[0,20000,0,0,0],
         "id":"IC5",
         "group":0,
         "name":"q_upgrade_name",
         "description":"q_upgrade_description",
         "hint":"q_upgrade_hint",
         "keyvars":{
            "v1":KEYS.Get("#bi_coalharvester#"),
            "v2":"4",
            "v3":"Resources"
         },
         "questimage":"building-coal-extractor.png",
         "questicon":"icon-coal_extractor.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/coal_extractor.png",
         "rules":{"b2lvl":4}
      },{
         "order":20,
         "prereq":"IC11",
         "list":true,
         "reward":[0,0,10000,0,0],
         "id":"IC6",
         "group":0,
         "name":"q_upgrade_name",
         "description":"q_upgrade_description",
         "hint":"q_upgrade_hint",
         "keyvars":{
            "v1":KEYS.Get("#bi_sulfurharvester#"),
            "v2":"4",
            "v3":"Resources"
         },
         "questimage":"building-sulfur-swirler.png",
         "questicon":"icon-sulfur_swirler.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/sulfur_swirler.png",
         "rules":{"b3lvl":4}
      },{
         "order":21,
         "prereq":"IC12",
         "list":true,
         "reward":[0,0,0,10000,0],
         "id":"IC7",
         "group":0,
         "name":"q_upgrade_name",
         "description":"q_upgrade_description",
         "hint":"q_upgrade_hint",
         "keyvars":{
            "v1":KEYS.Get("#bi_magmaharverster#"),
            "v2":"4",
            "v3":"Resources"
         },
         "questimage":"building-magma-pump.png",
         "questicon":"icon-magma_pump.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/magma_pump.png",
         "rules":{"b4lvl":4}
      },{
         "order":22,
         "prereq":"IS2",
         "list":true,
         "reward":[8000,8000,4000,4000,0],
         "id":"IS3",
         "group":0,
         "name":"q_upgrade_name",
         "description":"q_upgrade_description",
         "hint":"q_upgrade_hint",
         "keyvars":{
            "v1":KEYS.Get("#bi_storagesilo#"),
            "v2":"3",
            "v3":"Resources"
         },
         "questimage":"building-resource_pod.png",
         "questicon":"icon-resource_pod.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/resource_pod.png",
         "rules":{"b6lvl":3}
      },{
         "order":23,
         "prereq":"IC13",
         "list":true,
         "reward":[5000,5000,2500,2500,0],
         "id":"IC14",
         "group":0,
         "name":"q_upgrade_name",
         "description":"q_upgrade_description",
         "hint":"q_upgrade_hint",
         "keyvars":{
            "v1":KEYS.Get("#bi_townhall#"),
            "v2":"3",
            "v3":"Resources"
         },
         "questimage":"building-under_hall2.png",
         "questicon":"icon-under_hall2.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/under_hall2.png",
         "rules":{"b14lvl":3}
      },{
         "order":24,
         "prereq":"IS3",
         "list":true,
         "reward":[16000,16000,8000,8000,0],
         "id":"IS4",
         "group":0,
         "name":"q_upgrade_name",
         "description":"q_upgrade_description",
         "hint":"q_upgrade_hint",
         "keyvars":{
            "v1":KEYS.Get("#bi_storagesilo#"),
            "v2":"4",
            "v3":"Resources"
         },
         "questimage":"building-resource_pod.png",
         "questicon":"icon-resource_pod.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/resource_pod.png",
         "rules":{"b6lvl":4}
      },{
         "order":25,
         "prereq":"IS4",
         "list":true,
         "reward":[32000,32000,16000,16000,0],
         "id":"IS5",
         "group":0,
         "name":"q_upgrade_name",
         "description":"q_upgrade_description",
         "hint":"q_upgrade_hint",
         "keyvars":{
            "v1":KEYS.Get("#bi_storagesilo#"),
            "v2":"5",
            "v3":"Resources"
         },
         "questimage":"building-resource_pod.png",
         "questicon":"icon-resource_pod.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/resource_pod.png",
         "rules":{"b6lvl":5}
      },{
         "order":26,
         "list":true,
         "reward":[0,0,5000,0,0],
         "id":"IC17",
         "group":0,
         "name":"q_build_name",
         "description":"q_build_description2",
         "hint":"q_build_hint",
         "keyvars":{
            "v1":KEYS.Get("#bi_academy#"),
            "v3":KEYS.Get("ui_topbuildings")
         },
         "questimage":"building_inferno_academy.png",
         "questicon":"icon_iacademy.png",
         "streamTitle":"q_build_infernalacademy_streamtitle",
         "streamDescription":"q_build_infernalacademy_streambody",
         "streamImage":"quests/inferno_academy.png",
         "rules":{"b26lvl":1}
      },{
         "order":27,
         "prereq":"IC14",
         "list":true,
         "reward":[0,0,0,0,0],
         "id":"IUC5",
         "group":0,
         "name":"q_unlock_name",
         "description":"q_unlock_idescription",
         "hint":"inf_q_unlock_hint",
         "keyvars":{"v1":KEYS.Get("#mi_Valgos#")},
         "questimage":"inferno_monster4.png",
         "questicon":"icon_IC4.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/valgos.png",
         "rules":{"UNLOCK":"IC5"},
         "reward_creatureid":"IC4",
         "monster_reward":2
      },{
         "order":28,
         "prereq":"IUC5",
         "list":true,
         "reward":[0,0,0,0,0],
         "id":"IUC6",
         "group":0,
         "name":"q_unlock_name",
         "description":"q_unlock_idescription",
         "hint":"inf_q_unlock_hint",
         "keyvars":{"v1":KEYS.Get("#mi_Grokus#")},
         "questimage":"inferno_monster6.png",
         "questicon":"icon_IC6.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/grokus.png",
         "rules":{"UNLOCK":"IC6"},
         "reward_creatureid":"IC6",
         "monster_reward":15
      },{
         "order":29,
         "list":true,
         "reward":[30000,20000,20000,20000,0],
         "id":"IT3",
         "group":0,
         "name":"q_build_name",
         "description":"q_build_description",
         "hint":"q_build_hint",
         "keyvars":{
            "v1":"Magma Tower",
            "v2":"",
            "v3":"Defensive"
         },
         "questimage":"building-magma_tower.png",
         "questicon":"icon-magma_tower.png",
         "streamTitle":"q_magmatower_streamtitle",
         "streamDescription":"q_magmatower_streambody",
         "streamImage":"quests/magma_tower.png",
         "rules":{"b132lvl":1}
      },{
         "order":30,
         "list":true,
         "reward":[30000,20000,20000,20000,0],
         "id":"IQT1",
         "group":0,
         "name":"q_build_name",
         "description":"q_build_description",
         "hint":"q_build_hint",
         "keyvars":{
            "v1":"Quake Tower",
            "v2":"",
            "v3":"Defensive"
         },
         "questimage":"building-quake_tower.png",
         "questicon":"icon-quake_tower.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/quake_tower.png",
         "rules":{"b129lvl":1}
      },{
         "order":31,
         "prereq":"IBK1",
         "list":true,
         "reward":[2000,2000,2000,2000,0],
         "id":"IBK2",
         "group":0,
         "name":"q_bk2_name",
         "description":"q_bk2_description",
         "hint":"q_bk2_hint",
         "questimage":"trenchcoat.png",
         "questicon":"icon_wallstreet.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/trenchcoat.png",
         "rules":{"singleclickbank":20000}
      },{
         "order":32,
         "prereq":"IC14",
         "list":true,
         "reward":[0,0,0,0,0],
         "id":"IC15",
         "group":0,
         "name":"q_upgrade_name",
         "description":"q_upgrade_description",
         "hint":"q_upgrade_hint",
         "keyvars":{
            "v1":KEYS.Get("#bi_townhall#"),
            "v2":"4",
            "v3":"Resources"
         },
         "questimage":"building-under_hall3.png",
         "questicon":"icon-under_hall3.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/under_hall3.png",
         "rules":{"b14lvl":4},
         "reward_creatureid":"IC4",
         "monster_reward":20
      },{
         "order":33,
         "prereq":"IUC9",
         "list":true,
         "reward":[0,0,0,0,0],
         "id":"IUC10",
         "group":0,
         "name":"q_unlock_name",
         "description":"q_unlock_idescription",
         "hint":"inf_q_unlock_hint",
         "keyvars":{"v1":KEYS.Get("#mi_Balthazar#")},
         "questimage":"inferno_monster5.png",
         "questicon":"icon_IC6.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/balthazar.png",
         "rules":{"UNLOCK":"IC5"},
         "reward_creatureid":"IC5",
         "monster_reward":20
      },{
         "order":34,
         "prereq":"IUC10",
         "list":true,
         "reward":[0,0,0,0,0],
         "id":"IUC11",
         "group":0,
         "name":"q_unlock_name",
         "description":"q_unlock_idescription",
         "hint":"inf_q_unlock_hint",
         "keyvars":{"v1":KEYS.Get("#mi_Sabnox#")},
         "questimage":"inferno_monster7.png",
         "questicon":"icon_IC7.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/sabnox.png",
         "rules":{"UNLOCK":"IC7"},
         "reward_creatureid":"IC7",
         "monster_reward":5
      },{
         "order":35,
         "prereq":"IT3",
         "list":true,
         "reward":[60000,40000,40000,40000,0],
         "id":"IUT3",
         "group":0,
         "name":"q_upgrade_name",
         "description":"q_upgrade_description",
         "hint":"q_upgrade_hint",
         "keyvars":{
            "v1":"Magma Tower",
            "v2":"3",
            "v3":"Defensive"
         },
         "questimage":"building-magma_tower.png",
         "questicon":"icon-magma_tower.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/magma_tower.png",
         "rules":{"b132lvl":3}
      },{
         "order":36,
         "prereq":"IQT1",
         "list":true,
         "reward":[60000,40000,40000,40000,0],
         "id":"IQT3",
         "group":0,
         "name":"q_upgrade_name",
         "description":"q_upgrade_description",
         "hint":"q_upgrade_hint",
         "keyvars":{
            "v1":"Quake Tower",
            "v2":"3",
            "v3":"Defensive"
         },
         "questimage":"building-quake_tower.png",
         "questicon":"icon-quake_tower.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/quake_tower.png",
         "rules":{"b129lvl":3}
      },{
         "order":37,
         "prereq":"IC14",
         "list":true,
         "reward":[0,0,0,0,0],
         "id":"IC16",
         "group":0,
         "name":"q_upgrade_name",
         "description":"q_upgrade_description",
         "hint":"q_upgrade_hint",
         "keyvars":{
            "v1":KEYS.Get("#bi_townhall#"),
            "v2":"5",
            "v3":"Buildings"
         },
         "questimage":"building-under_hall3.png",
         "questicon":"icon-under_hall3.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/under_hall3.png",
         "rules":{"b14lvl":5},
         "reward_creatureid":"IC7",
         "monster_reward":5
      },{
         "order":38,
         "prereq":"IUC13",
         "list":true,
         "reward":[0,0,0,0,0],
         "id":"IUC12",
         "group":0,
         "name":"q_unlock_name",
         "description":"q_unlock_idescription",
         "hint":"inf_q_unlock_hint",
         "keyvars":{"v1":KEYS.Get("#mi_King_Wormzer#")},
         "questimage":"inferno_monster8.png",
         "questicon":"icon_IC8.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/king_wormzer.png",
         "rules":{"UNLOCK":"IC8"},
         "reward_creatureid":"IC8",
         "monster_reward":2
      },{
         "order":39,
         "prereq":"IBK2",
         "list":true,
         "reward":[10000,10000,10000,10000,0],
         "id":"IBK3",
         "group":0,
         "name":"q_bk3_name",
         "description":"q_bk3_description",
         "hint":"q_bk3_hint",
         "questimage":"wallstreet.png",
         "questicon":"icon_wallstreet.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/wallstreet.png",
         "rules":{"singleclickbank":100000}
      },{
         "order":40,
         "prereq":"IBK3",
         "list":true,
         "reward":[50000,50000,50000,50000,0],
         "id":"IBK4",
         "group":0,
         "name":"q_bk4_name",
         "description":"q_bk4_description",
         "hint":"q_bk4_hint",
         "questimage":"mogul.png",
         "questicon":"icon_mogul.png",
         "streamTitle":"q_c0_streamtitle",
         "streamDescription":"q_c0_streamdescription",
         "streamImage":"quests/mogul.png",
         "rules":{"singleclickbank":500000}
      }];
       
      
      public function INFERNO_QUESTS()
      {
         super();
      }
      
      public static function QuestPopup(param1:String, param2:String, param3:String, param4:String, param5:String) : void
      {
      }
   }
}
