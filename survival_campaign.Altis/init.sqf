// general startup settings:
enableDynamicSimulationSystem true;
"Group" setDynamicSimulationDistance 1500;

//All the different loadouts that can be picked for the AI:

//Rifle wielding unit.
_AIunitLoadout01  = [["rhs_weap_kar98k","","","",["rhsgref_5Rnd_792x57_kar98k",5],[],""],[],["hgun_Pistol_heavy_01_F","","","",["11Rnd_45ACP_Mag",15],[],""],["U_I_C_Soldier_Bandit_5_F",[]],["V_TacVest_gen_F",[["ACE_elasticBandage",5],["ACE_fieldDressing",3],["ACE_packingBandage",2],["ACE_EarPlugs",1],["ACE_EntrenchingTool",1],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_tourniquet",2],["rhsgref_5Rnd_792x57_kar98k",6,5],["11Rnd_45ACP_Mag",3,15]]],[],"H_Bandanna_gry","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
//Shotgun wielding unit. 
_AIunitLoadout02  = [["sgun_HunterShotgun_01_F","","","",["2Rnd_12Gauge_Slug",2],[],""],[],[],["U_C_IDAP_Man_casual_F",[["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_fieldDressing",2],["ACE_quikclot",2],["ACE_EarPlugs",1],["ACE_EntrenchingTool",1],["ACE_morphine",1],["ACE_epinephrine",1],["ACE_tourniquet",1]]],["V_HarnessO_brn",[["ACE_elasticBandage",5],["ACE_fieldDressing",3],["ACE_packingBandage",2],["ACE_EarPlugs",1],["ACE_EntrenchingTool",1],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_tourniquet",2],["2Rnd_12Gauge_Slug",10,2]]],[],"H_ShemagOpen_tan","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
//Pistol wielding unit type 1. 
_AIunitLoadout03  = [[],[],["hgun_ACPC2_F","","","",["9Rnd_45ACP_Mag",8],[],""],["U_I_C_Soldier_Bandit_3_F",[["rhs_mag_rdg2_white",1,1],["9Rnd_45ACP_Mag",1,8]]],["V_HarnessOGL_brn",[["ACE_elasticBandage",5],["ACE_fieldDressing",3],["ACE_packingBandage",2],["ACE_EarPlugs",1],["ACE_EntrenchingTool",1],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_tourniquet",2],["9Rnd_45ACP_Mag",5,8]]],[],"H_Cap_blk","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
//FN Fal wielding unit. 
_AIunitLoadout04  = [["rhs_weap_l1a1_wood","rhsgref_acc_falMuzzle_l1a1","","",["rhs_mag_20Rnd_762x51_m61_fnfal",20],[],""],[],["hgun_ACPC2_F","","","",["9Rnd_45ACP_Mag",8],[],""],["U_I_G_Story_Protagonist_F",[["9Rnd_45ACP_Mag",1,8],["rhs_mag_20Rnd_762x51_m61_fnfal",2,20]]],["V_HarnessOGL_brn",[["ACE_elasticBandage",5],["ACE_fieldDressing",3],["ACE_packingBandage",2],["ACE_EarPlugs",1],["ACE_EntrenchingTool",1],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_tourniquet",2],["9Rnd_45ACP_Mag",5,8],["rhs_mag_20Rnd_762x51_m61_fnfal",3,20]]],[],"H_Watchcap_blk","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
//PDW 2000 wielding unit.
_AIunitLoadout05  = [["hgun_PDW2000_F","","","",["30Rnd_9x21_Mag",30],[],""],[],[],["U_I_C_Soldier_Para_1_F",[["rhs_mag_rdg2_white",1,1]]],["V_BandollierB_blk",[["ACE_elasticBandage",5],["ACE_fieldDressing",3],["ACE_packingBandage",2],["ACE_EarPlugs",1],["ACE_EntrenchingTool",1],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_tourniquet",2],["30Rnd_9x21_Mag",2,30],["16Rnd_9x21_Mag",5,17]]],["B_AssaultPack_cbr",[]],"H_Hat_grey","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
//Pistol wielding unit type 2. 
_AIunitLoadout06 = [[],[],["rhs_weap_6p53","","","",["rhs_18rnd_9x21mm_7N28",18],[],""],["U_I_C_Soldier_Bandit_3_F",[["rhs_mag_rdg2_white",1,1]]],["V_HarnessOGL_brn",[["ACE_elasticBandage",5],["ACE_fieldDressing",3],["ACE_packingBandage",2],["ACE_EarPlugs",1],["ACE_EntrenchingTool",1],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_tourniquet",2],["rhs_18rnd_9x21mm_7N28",4,18]]],[],"H_Cap_blk","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
 //Pistol wielding unit type 2. 
_AIunitLoadout07 = [[],["rhs_weap_rpg7","","","",["rhs_rpg7_PG7V_mag",1],[],""],["rhsusf_weap_m1911a1","","","",["9Rnd_45ACP_Mag",8],[],""],["U_I_C_Soldier_Bandit_2_F",[["rhs_mag_rdg2_white",1,1]]],["V_HarnessOGL_brn",[["ACE_elasticBandage",5],["ACE_fieldDressing",3],["ACE_packingBandage",2],["ACE_EarPlugs",1],["ACE_EntrenchingTool",1],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_tourniquet",2],["9Rnd_45ACP_Mag",5,8]]],["rhs_rpg_empty",[["rhs_rpg7_PG7V_mag",1,1]]],"rhssaf_booniehat_digital","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
//Pistol wielding unit type 2. 
_AIunitLoadout08 = [[],[],["rhs_weap_pya","","","",["rhs_mag_9x19_17",17],[],""],["U_I_C_Soldier_Bandit_3_F",[["rhs_mag_rdg2_white",1,1]]],["V_HarnessOGL_gry",[["ACE_elasticBandage",5],["ACE_fieldDressing",3],["ACE_packingBandage",2],["ACE_EarPlugs",1],["ACE_EntrenchingTool",1],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_tourniquet",2],["rhs_mag_9x19_17",5,17]]],[],"H_Cap_blk","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
//Mp5 wielding unit.
_AIunitLoadout09 = [["SMG_05_F","","acc_flashlight","optic_Holosight_smg_blk_F",["30Rnd_9x21_Mag_SMG_02",30],[],""],[],["hgun_ACPC2_F","","","",["9Rnd_45ACP_Mag",8],[],""],["U_C_IDAP_Man_Tee_F",[["rhs_mag_rdg2_white",1,1],["9Rnd_45ACP_Mag",1,8]]],["V_LegStrapBag_black_F",[["ACE_elasticBandage",5],["ACE_fieldDressing",3],["ACE_packingBandage",2],["ACE_EarPlugs",1],["ACE_EntrenchingTool",1],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_tourniquet",2],["30Rnd_9x21_Mag_SMG_02",5,30]]],[],"H_Cap_usblack","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
//PKM wielding unit.
_AIunitLoadout10 = [["rhs_weap_pkm","","","",["rhs_100Rnd_762x54mmR",100],[],""],[],[],["rhsgref_uniform_TLA_2",[["ACE_EarPlugs",1],["rhs_mag_rgd5",2,1],["rhs_mag_rdg2_white",2,1]]],["V_Chestrig_khk",[["rhs_100Rnd_762x54mmR_green",1,100],["rhs_mag_rdg2_white",2,1],["rhs_mag_rgd5",1,1]]],["rhs_sidor",[["rhs_100Rnd_762x54mmR_green",1,100]]],"rhsgref_helmet_M1_liner","G_Balaclava_oli",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];

 AIloadoutArray = [_AIunitLoadout01,_AIunitLoadout02,_AIunitLoadout03,_AIunitLoadout04,_AIunitLoadout05,_AIunitLoadout06,_AIunitLoadout07,_AIunitLoadout08 ,_AIunitLoadout09,_AIunitLoadout10];

// Spawning of all patrol groups:
execVM "feresPatrol01.sqf";
execVM "feresPatrol02.sqf";
execVM "feresPatrol03.sqf";
execVM "selekanoPatrol01.sqf";


//create preplaced vehicles with their changes:
_vehicleSpawnmarker01 = getMarkerPos "vehicleSpawnpoint01";
_vehicleSpawnmarker02 = getMarkerPos "vehicleSpawnpoint02";

_vehicle01 = createVehicle ["C_Offroad_02_unarmed_F", _vehicleSpawnmarker01 ];
_vehicle01 setFuel 0.1;
_vehicle01 setHit ["wheel_1_1_steering", 1];
_vehicle01 setHit ["body_hitpoint", 0.6];

_vehicle02 = createVehicle ["C_Offroad_01_F", _vehicleSpawnmarker02 ];
_vehicle01 setFuel 0.25;
