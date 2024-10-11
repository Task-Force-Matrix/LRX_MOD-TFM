// *** FRIENDLIES ***
// Default classname: scripts\shared\default_classnames.sqf
// Advanced definition: scripts\shared\classnames.sqf
GRLIB_side_friendly = WEST;
GRLIB_west_modder = "Z@Warrior / pSiKO";

// Unsung Men (US 1st Infantery Division'65)

Arsenal_typename = "uns_AmmoBox_ANZAC";
huron_typename = "uns_ch47_m60_army";
FOB_typename = "LAND_uns_tentbarracks"; 	//"Land_Cargo_HQ_V1_F";
FOB_box_typename = "B_Slingload_01_Cargo_F";
FOB_truck_typename = "uns_m37b1_m1919";
FOB_outpost = "LAND_uns_tent3supply";	//"Land_BagBunker_Tower_F";
FOB_box_outpost = "Land_Cargo10_grey_F";
Respawn_truck_typename = "uns_M577_amb";
ammo_truck_typename = "uns_M35A2_ammo";
fuel_truck_typename = "uns_M35A2_fuel";
repair_truck_typename = "uns_M35A2_repair";
pilot_classname = "uns_pilot14";
crewman_classname = "uns_US_2MI_DRV";
repair_offroad = "uns_zil157_repair";
SHOP_Man = "uns_civilian4";	    //"C_Man_formal_1_F";
SELL_Man = "uns_civilian3_b1";	//"C_Story_Mechanic_01_F";

WRHS_Man = "uns_pilot16";				// Man in Warehouse
commander_classname = "uns_pilot16";			// Sell-Man in FOB
a3w_vip_vehicle = "uns_willys_2_arvn";
a3w_br_planes = "uns_skymaster_civ_gold";

/*
a3w_sd_item  -> suite case
*/

Radio_tower = "Antenna";
waterbarrel_typename = "Land_WaterBottle_01_stack_F";
foodbarrel_typename = "Land_FoodSacks_01_large_brown_idap_F";
GRLIB_sar_wreck = "uns_ah1g_Wreck";
canisterFuel = "Land_CanisterFuel_Red_F";
basic_weapon_typename = "uns_HiddenAmmoBox";

//repair_sling_typename = "B_Slingload_01_Repair_F";
//fuel_sling_typename = "B_Slingload_01_Fuel_F";
//ammo_sling_typename = "B_Slingload_01_Ammo_F";
//medic_sling_typename = "B_Slingload_01_Medevac_F";
//PAR_Medikit = "Medikit";
//PAR_AidKit = "FirstAidKit";

// *********************************************************************


chimera_vehicle_overide = [
  ["B_Heli_Light_01_F", "uns_oh6_transport"],
  ["B_Heli_Transport_01_F", "uns_ch46d"]
];

// [CLASSNAME, MANPOWER, AMMO, FUEL, RANK]

infantry_units_west = [
	["Alsatian_Random_F",0,0,0,GRLIB_perm_max],
	["Fin_random_F",0,0,0,0],
	["uns_US_1ID_RF3",1,0,0,0],
	["uns_US_1ID_MED",1,0,0,0],
	["uns_US_1ID_ENG",1,0,0,0],
	["uns_US_1ID_GL",1,0,0,GRLIB_perm_inf],
	["uns_US_1ID_MRK2",1,0,0,GRLIB_perm_inf],
	["uns_US_1ID_AT",1,0,0,GRLIB_perm_inf],
	["uns_US_25ID_MGAASG",1,0,0,GRLIB_perm_inf],
	["uns_US_1ID_HMG",1,0,0,GRLIB_perm_inf],
	["uns_US_1ID_MRK",1,0,0,GRLIB_perm_inf],
	["uns_US_1ID_MTSG",1,0,0,GRLIB_perm_inf],
	["uns_US_1ID_MGSG3",1,0,0,GRLIB_perm_inf],
	[crewman_classname,1,0,0,GRLIB_perm_inf],
	[pilot_classname,1,0,0,GRLIB_perm_inf]
];

units_loadout_overide = [
	"uns_US_25ID_MGAASG",		// AA-Soldier
	"uns_US_1ID_MED",			// Add Medikit
	"uns_US_1ID_ENG"			// Add Toolkit
];



// *** RESISTANCE
resistance_squad = [
"uns_men_US_1AC_COM",
"uns_men_US_1AC_MGSG",
"uns_men_US_1AC_HMG",
"uns_men_US_1AC_MRK2",
"uns_men_US_1AC_MED",
"uns_men_US_1AC_PL",
"uns_men_US_1AC_SAP",
"uns_men_US_1AC_TPR1",
"uns_men_US_1AC_ENG"
];

resistance_squad_static = "uns_m2_high";


// [CLASSNAME, MANPOWER, AMMO, FUEL, RANK]

/* Ranking-System
0			Private
GRLIB_perm_inf		Corporal	200
GRLIB_perm_log		Sergeant	400
GRLIB_perm_tank		Captain		600
GRLIB_perm_air		Major		800
GRLIB_perm_max		Colonel		1000
GRLIB_perm_max*2	Super Colonel 	2000
*/

light_vehicles = [
	["UNS_Zodiac_W",1,25,1,0],
	["uns_pbr",2,100,5,GRLIB_perm_inf],
	["uns_pbr_mk18",2,120,5,GRLIB_perm_log],
	["uns_willys",1,25,5,0],
	["uns_willys_2",1,50,5,0],
	["uns_willysmg50",1,65,5,GRLIB_perm_inf],
	["uns_willysm40",1,80,5,GRLIB_perm_inf],
	["uns_PBR_M10",2,130,5,GRLIB_perm_log],
	["uns_m37b1",1,60,5,0],
	["uns_M35A2",1,80,5,GRLIB_perm_inf],
	["uns_M35A2_Open",1,80,5,GRLIB_perm_log],
	["uns_xm706e1",1,200,15,GRLIB_perm_log],
	["uns_xm706e2",1,225,15,GRLIB_perm_log],
	["uns_m163",1,300,25,GRLIB_perm_tank]
];

heavy_vehicles = [
	["uns_M113_M30",1,225,8,GRLIB_perm_log],
	["uns_M113_transport",2,225,10,GRLIB_perm_tank],
	["uns_M113_30cal",2,250,10,GRLIB_perm_tank],
	["uns_M113_M134",2,275,10,GRLIB_perm_tank],
	["uns_M113_M2",2,300,10,GRLIB_perm_tank],
	["uns_M113A1_M134",2,350,12,GRLIB_perm_tank],
	["uns_M113A1_M2",2,375,12,GRLIB_perm_tank],
	["uns_M113A1_M40",2,400,12,GRLIB_perm_tank],
	["uns_M132",2,450,12,GRLIB_perm_tank],
	["uns_m48a3",3,500,15,GRLIB_perm_air],
	["uns_m551",3,550,15,GRLIB_perm_max],
	["uns_M67A",3,600,15,GRLIB_perm_max],
	["uns_m110sp",3,650,18,GRLIB_perm_max]
];

air_vehicles = [
	["uns_H13_transport_Army",2,150,5,GRLIB_perm_inf],
	["uns_oh6_transport",2,200,5,GRLIB_perm_inf],
	["uns_ch34_army",2,250,5,GRLIB_perm_inf],
	["uns_h21c",2,350,5,GRLIB_perm_inf],
	["uns_oh6_m27r",2,300,8,GRLIB_perm_log],
	["uns_UH1H_m60",2,350,8,GRLIB_perm_log],
	["uns_UH1C_M21_M200_1AC",2,375,8,GRLIB_perm_log],
	["UNS_UH1C_M3_ARA_AT",2,400,8,GRLIB_perm_log],
	["uns_ach47_m200",2,450,10,GRLIB_perm_tank],
	["UNS_AH1G",2,500,10,GRLIB_perm_air],
	["UNS_AH1G_M200",2,550,10,GRLIB_perm_air],
	["UNS_AH1G_SUU11",2,600,10,GRLIB_perm_air],
	["uns_c1a2cargo",3,600,10,GRLIB_perm_air],
	["uns_ov10_navy_CAS",3,700,10,GRLIB_perm_air],
	["UNS_skymaster_MR",3,800,10,GRLIB_perm_air],
	["uns_A6_Intruder_MR",4,900,12,GRLIB_perm_max],
	["uns_A7N_CAS",4,1000,12,GRLIB_perm_max],
	["uns_A4E_skyhawk_BMB",4,1100,12,GRLIB_perm_max],
	["uns_F4J_AGM",4,1200,12,GRLIB_perm_max]
];

blufor_air = [
	"UNS_AH1G",
	"uns_UH1C_M21_M200_1AC",
	"UNS_UH1C_M3_ARA_AT",
	"uns_A6_Intruder_USMC_CAS",
	"uns_F4B_CAS"
];

boats_west = [
"UNS_Zodiac_W",
"uns_PBR_M10",
"uns_pbr",
"uns_pbr_mk18"
];

static_vehicles = [
	["uns_US_MK18_low",1,30,0,0],
	["uns_m60_high",1,40,0,GRLIB_perm_inf],
	["uns_m60_bunker_large",1,140,0,GRLIB_perm_log],
	["uns_m2_high",1,80,0,GRLIB_perm_log],
	["uns_M40_106mm_US",1,240,0,GRLIB_perm_log],
	["uns_M2_60mm_mortar",0,300,0,GRLIB_perm_log],
	["uns_M1_81mm_mortar",1,360,0,GRLIB_perm_tank],
	["uns_M30_107mm_mortar",0,470,0,GRLIB_perm_air],
	["Uns_M55_Quad",1,400,8,GRLIB_perm_tank],
	["Uns_M114_artillery",1,600,0,GRLIB_perm_tank]
];

// *** Static Weapon with AI ***
static_vehicles_AI = [
"uns_US_MK18_low",
"uns_m60_high",
"uns_m60_bunker_large",
"uns_m2_high",
"uns_M40_106mm_US",
"uns_M1_81mm_mortar",
"Uns_M55_Quad",
"Uns_M114_artillery"
];

support_vehicles_west = [
];

buildings_west = [
	["Land_Cargo_Tower_V1_F",0,0,0,GRLIB_perm_tank],
	["Land_Cargo_House_V1_F",0,0,0,GRLIB_perm_inf],
	["Land_Cargo_Patrol_V1_F",0,0,0,GRLIB_perm_log],
	["pook_Land_fort_artillery_nest_MUD",0,0,0,0],
	["Land_Illum_Tower",0,0,0,0],
	["Land_LampStreet_02_triple_F",0,0,0,0],
	["Land_fortified_nest_small_ep1",0,0,0,0],
	["LAND_uns_bunker_troop2",0,0,0,0],
	["Land_Wood_Tower",0,0,0,0],
	["Land_bagfencecorner",0,0,0,0],
	["Land_bagfenceend",0,0,0,0],
	["Land_bagfencelong",0,0,0,0],
	["Land_bagfenceround",0,0,0,0],
	["Land_bagfenceshort",0,0,0,0],
	["LAND_sb_bunker_main",0,0,0,0],
	["LAND_sb_bunker_main02",0,0,0,0],
	["LAND_t_sb_cnr",0,0,0,0],
	["LAND_t_sb_bunker2",0,0,0,0],
	["LAND_t_sb_end",0,0,0,0],
	["LAND_t_sb_pit1",0,0,0,0],
	["LAND_t_sb_Tee",0,0,0,0],
	["LAND_t_sb_20",0,0,0,0],
	["LAND_t_sb_Cross",0,0,0,0],
	["Land_bagfencecorner",0,0,0,0],
	["Land_bagfenceend",0,0,0,0],
	["Land_bagfencelong",0,0,0,0],
	["Land_bagfenceround",0,0,0,0],
	["Land_bagfenceshort",0,0,0,0],
	["uns_FlagCarrier101AB",0,0,0,0]
];

blufor_squad_inf_light = [
	"uns_US_1ID_PL",
	"uns_US_1ID_RF3",
	"uns_US_1ID_RF3",
	"uns_US_1ID_TRI",
	"uns_US_1ID_MED"
];


blufor_squad_inf = [
	"uns_US_1ID_PL",
	"uns_US_1ID_RF3",
	"uns_US_1ID_TRI",
	"uns_US_1ID_MED",
	//"uns_US_1ID_GL"
	"uns_US_1ID_HMG",
	"uns_US_1ID_AHMG"
];


blufor_squad_at = [
	"uns_US_1ID_PL",
	"uns_US_1ID_RF3",
	"uns_US_1ID_MED",
	"uns_US_1ID_HMG",
	"uns_US_1ID_AT",
	"uns_US_1ID_AT",
	"uns_US_1ID_GL"
];

blufor_squad_aa = [
	"uns_US_1ID_PL",
	"uns_US_1ID_RF3",
	"uns_US_1ID_MED",
	"uns_US_1ID_AT",
	"uns_US_1ID_MRK2",
	"uns_US_25ID_MGAASG",	//"uns_US_1ID_MGAASG",
	"uns_US_25ID_MGAASG"	//"uns_US_1ID_MGAASG"
];

blufor_squad_mix = [
	"uns_US_1ID_PL",
	"uns_US_1ID_RF3",
	"uns_US_1ID_MED",
	"uns_US_1ID_HMG",
	"uns_US_1ID_AT",
	"uns_US_1ID_MRK2",
	"uns_US_25ID_MGAASG",	//"uns_US_1ID_MGAASG",
	"uns_US_1ID_GL"
];

squads = [
	[blufor_squad_inf_light,10,300,0,GRLIB_perm_max],
	[blufor_squad_inf,20,400,0,GRLIB_perm_max],
	[blufor_squad_at,25,600,0,GRLIB_perm_max],
	[blufor_squad_aa,25,600,0,GRLIB_perm_max],
	[blufor_squad_mix,25,800,0,GRLIB_perm_max]
];

// Everything the AI troups should be able to resupply from
ai_resupply_sources_west = [
	"uns_ch47_m60_army",
	"uns_M35A2_ammo",
	"uns_M577_amb"
];

// Everything the AI troups should be able to healing from
ai_healing_sources_west = [
	"uns_ch47_m60_army",
	"uns_M577_amb"
];

vehicle_rearm_sources_west = [
	"uns_ch47_m60_army",
	"uns_M35A2_ammo"
];

vehicle_big_units_west = [

];

GRLIB_vehicle_whitelist_west = [

];

GRLIB_vehicle_blacklist_west = [];

GRLIB_AirDrop_1 = [			// Unarmed Offroader 50
	"uns_willys"
];

GRLIB_AirDrop_2 = [			// Armed Offroader 100
	"uns_willysmg50"
];

GRLIB_AirDrop_3 = [			// MRAP 200
	"uns_M113_transport"
];

GRLIB_AirDrop_4 = [			// Large Truck 300
	"uns_m37b1"
];

GRLIB_AirDrop_5 = [			// APC 750
	"uns_xm706e1"
];

GRLIB_AirDrop_6 = [			// Boat 250
	"UNS_Zodiac_W"
];
