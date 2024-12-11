// *** FRIENDLIES ***
GRLIB_side_friendly = WEST;
GRLIB_west_modder = "pSiKO";

// Default classname: scripts\shared\default_classnames.sqf
// Advanced definition: scripts\shared\classnames.sqf

huron_typename = "vn_b_air_ch47_02_01";  // // to use value from lobby/server.cfg
FOB_typename = "Land_vn_bunker_big_02";
FOB_typename_sign = [[-3, -5, -0.4], 180];   // "Land_vn_bunker_big_02"
FOB_typename_map = [[0, 1.5, 2], 180];       // "Land_vn_bunker_big_02"
FOB_outpost = "Land_vn_b_trench_bunker_01_02";
FOB_outpost_sign = [[-1.5, -6, -0.4], 90];   // "Land_vn_b_trench_bunker_01_02"
FOB_box_typename = "Land_Pod_Heli_Transport_04_box_black_F";
FOB_truck_typename = "vn_b_wheeled_m54_03";
FOB_box_outpost = "vn_us_komex_small_02";
mobile_respawn = "Land_TentDome_F";
mobile_respawn_bag = "B_Kitbag_Base";
Respawn_truck_typename = "vn_b_wheeled_m54_02_sog";
ammo_truck_typename = "vn_b_wheeled_m54_ammo";
fuel_truck_typename = "vn_b_wheeled_m54_fuel";
repair_truck_typename = "vn_b_wheeled_m54_repair";
repair_sling_typename = "B_Slingload_01_Repair_F";
fuel_sling_typename = "B_Slingload_01_Fuel_F";
ammo_sling_typename = "B_Slingload_01_Ammo_F";
medic_sling_typename = "B_Slingload_01_Medevac_F";
pilot_classname = "vn_b_men_aircrew_05";
crewman_classname = "vn_b_men_army_24";
uavs_terminal_typename = "";
Arsenal_typename = "Land_vn_us_weapons_stack2";
PAR_Medikit = "vn_b_item_medikit_01";
PAR_AidKit = "vn_b_item_firstaidkit";
GRLIB_sar_wreck = "vn_air_uh1d_med_wreck";
repair_offroad = "vn_b_wheeled_m54_repair_airport";
waterbarrel_typename = "Land_WaterBottle_01_stack_F";
fuelbarrel_typename = "Land_MetalBarrel_F";
foodbarrel_typename = "Land_FoodSacks_01_large_brown_idap_F";
basic_weapon_typename = "Land_vn_pavn_weapons_stack1";
commander_classname = "vn_b_men_army_28";
a3w_resistance_static = "vn_b_army_static_m2_high";
blufor_flag = "vn_flag_usarmy";

chimera_vehicle_overide = [
  ["B_Heli_Light_01_F",  "vn_b_air_oh6a_01"],
  ["B_Heli_Transport_01_F", "vn_b_air_uh1d_02_04"]
];

// [CLASSNAME, MANPOWER, AMMO, FUEL, RANK]
infantry_units_west = [
	["Alsatian_Random_F",0,0,0,GRLIB_perm_max],
	["Fin_random_F",0,0,0,0],
	["vn_b_men_army_15",1,0,0,0],
	["vn_b_men_army_03",1,0,0,0],
	["vn_b_men_army_04",1,0,0,0],
	["vn_b_men_army_07",1,0,0,0],
	["vn_b_men_army_06",1,0,0,GRLIB_perm_inf],
	["vn_b_men_army_12",1,0,0,GRLIB_perm_inf],
	["vn_b_men_army_10",1,0,0,GRLIB_perm_log],
	["vn_b_men_seal_32",1,0,0,GRLIB_perm_log],
	["vn_b_men_sog_19",1,0,0,GRLIB_perm_tank],
	["vn_b_men_army_11",1,0,0,GRLIB_perm_air],
	[crewman_classname,1,0,0,GRLIB_perm_inf],
	[pilot_classname,1,0,0,GRLIB_perm_log]
];


// *** RESISTANCE - ARVN ***
a3w_resistance_squad = [
	"vn_i_men_sf_04",
	"vn_i_men_sf_08",
	"vn_i_men_sf_02",
	"vn_i_men_sf_12",
	"vn_i_men_sf_06",
	"vn_i_men_sf_07",
	"vn_i_men_sf_09",
	"vn_i_men_sf_05",
	"vn_i_men_sf_03"
];

units_loadout_overide = [
];

LOADOUT_fixed_price = [
	//["launch_o_vorona_brown_f" , 200],
	["vn_sa7_mag" , 6],
	["vn_sa7b_mag" , 6],
	["vn_m72_mag" , 3],
	["vn_rpg2_mag" , 3],
	["vn_rpg7_mag" , 3]
];

LOADOUT_expensive_items = [
	"vn_b_item_toolkit",
	"vn_b_item_medikit"
];

LOADOUT_free_items = [
	"_mag",
	"vn_b_item_firstaidkit",
	"vn_b_item_map",
	"vn_b_item_radio_urc10",
	"vn_b_item_compass",
	"vn_b_item_watch"
];

light_vehicles = [
	["vn_c_bicycle_01",1,1,1,0],
	// Boat
	["vn_o_boat_01_02",1,10,1,0],
	["vn_b_boat_11_01",1,25,1,GRLIB_perm_inf],
	["vn_b_boat_09_01",1,25,1,GRLIB_perm_inf],
	["vn_o_boat_01_mg_02",1,25,1,GRLIB_perm_inf],
	["vn_b_boat_12_04",15,250,1,GRLIB_perm_inf],
	["vn_b_boat_13_04",15,250,1,GRLIB_perm_inf],
	["vn_b_boat_06_01",20,1400,20,GRLIB_perm_tank],
	["vn_b_boat_05_02",20,1400,20,GRLIB_perm_tank],

	// Land

	["vn_b_wheeled_m151_01",1,5,1,0],
	["vn_b_wheeled_lr2a_01_aus_army",1,15,2,0],
	["vn_b_wheeled_lr2a_mg_03_aus_army",1,25,2,GRLIB_perm_inf],
	["vn_b_wheeled_lr2a_mg_01_aus_army",1,35,2,GRLIB_perm_inf],
	["vn_b_wheeled_m151_02",2,40,2,GRLIB_perm_inf],
	["vn_o_car_04_01",1,15,2,0],
	["vn_o_car_04_mg_01",2,40,2,GRLIB_perm_inf],
	["vn_b_wheeled_m151_mg_04",3,75,2,GRLIB_perm_log],
	["vn_b_wheeled_m151_mg_02",3,100,2,GRLIB_perm_log],
	["vn_b_wheeled_m151_mg_03",3,125,2,GRLIB_perm_log],
	["vn_b_wheeled_m54_01",3,100,3,0],
	["vn_b_wheeled_m54_02",4,150,4,GRLIB_perm_log],
	["vn_b_armor_m113_acav_04",4,150,4,GRLIB_perm_log],
	["vn_b_armor_m577_02",4,150,4,GRLIB_perm_log],
	["vn_b_armor_m132_01",4,350,24,GRLIB_perm_tank],
	["vn_b_armor_m125_01",4,350,4,GRLIB_perm_tank]	
];

heavy_vehicles = [
	["vn_b_wheeled_m54_mg_01",5,250,5,GRLIB_perm_tank],
	["vn_b_wheeled_m54_mg_02",10,500,6,GRLIB_perm_tank],
	["vn_b_wheeled_m54_mg_03",5,250,5,GRLIB_perm_tank],
	["vn_b_wheeled_m151_mg_05",6,300,6,GRLIB_perm_tank],
	["vn_b_armor_m41_01_01",20,1500,25,GRLIB_perm_tank],
	["vn_b_armor_m48_01_01",20,1700,25,GRLIB_perm_air],
	["vn_b_armor_m67_01_01",20,2000,25,GRLIB_perm_max]
];

air_vehicles = [
	["vn_b_air_oh6a_01",4,200,6,GRLIB_perm_log],
	["vn_b_air_oh6a_03",5,400,10,GRLIB_perm_tank],
	["vn_b_air_oh6a_02",5,550,10,GRLIB_perm_tank],
	["vn_b_air_oh6a_05",6,700,10,GRLIB_perm_tank],
	["vn_b_air_ch34_03_01",6,800,10,GRLIB_perm_tank],
	["vn_b_air_ch34_04_03",15,1000,15,GRLIB_perm_air],
	["vn_b_air_ach47_04_01",15,1500,15,GRLIB_perm_air],
	["vn_b_air_ach47_01_01",15,1500,15,GRLIB_perm_air],
	["vn_b_air_ach47_03_01",15,1500,15,GRLIB_perm_max],
	["vn_b_air_uh1d_02_02",6,750,10,GRLIB_perm_tank],
	["vn_b_air_uh1c_04_02",15,1500,15,GRLIB_perm_air],
	["vn_b_air_uh1c_02_02",25,2000,25,GRLIB_perm_air],
	["vn_b_air_ah1g_10_usmc",30,2250,30,GRLIB_perm_air],
	["vn_b_air_f100d_at",50,1200,50,GRLIB_perm_air],
	["vn_b_air_f100d_bmb",50,1200,50,GRLIB_perm_max],
	["vn_b_air_f100d_ehcas",50,1200,50,GRLIB_perm_max],
	["vn_b_air_f100d_mr",50,1200,50,GRLIB_perm_air],
	["vn_b_air_f4b_usmc_at",50,3000,50,GRLIB_perm_air],
	["vn_b_air_f4b_usmc_bmb",50,3000,50,GRLIB_perm_max],
	["vn_b_air_f4b_usmc_ehcas",50,3000,50,GRLIB_perm_max],
	["vn_b_air_f4b_usmc_mr",50,3000,50,GRLIB_perm_air],
	["vn_b_air_f4c_chico",50,2000,50,GRLIB_perm_air],
	["vn_b_air_f4c_at",50,3000,50,GRLIB_perm_air],
	["vn_b_air_f4c_bmb",50,3000,50,GRLIB_perm_max],
	["vn_b_air_f4c_ehcas",50,3000,50,GRLIB_perm_max],
	["vn_b_air_f4c_mr",50,3000,50,GRLIB_perm_air]
];

blufor_air = [
	"vn_b_air_f100d_mr",
	"vn_b_air_f100d_at",
	"vn_b_air_f100d_ehcas",
	"vn_b_air_f4c_at",
	"vn_b_air_f4c_ehcas",
	"vn_b_air_f4c_chico",
	"vn_b_air_uh1c_02_02",
	"vn_b_air_ah1g_10_usmc",
	"vn_b_air_uh1c_04_02",
	"vn_b_air_ch34_04_03",
	"vn_b_air_oh6a_05",
	"vn_b_air_oh6a_02",
	"vn_b_air_oh6a_03"
];

boats_west = [
	"vn_o_boat_01_02",
	"vn_b_boat_11_01",
	"vn_b_boat_09_01",
	"vn_o_boat_01_mg_02",
	"vn_b_boat_12_04",
	"vn_b_boat_13_04",
	"vn_b_boat_06_01",
	"vn_b_boat_05_02"
];

static_vehicles = [
	["vn_b_army_static_m60_low",0,15,0,GRLIB_perm_inf],
	["vn_b_army_static_m60_high",0,20,0,GRLIB_perm_inf],
	["vn_b_army_static_m1919a6",0,20,0,GRLIB_perm_inf],
	["vn_b_army_static_m1919a4_low",0,45,0,GRLIB_perm_log],
	["vn_b_army_static_m1919a4_high",0,50,0,GRLIB_perm_log],
	["vn_b_army_static_m2_low",0,40,0,GRLIB_perm_log],
	["vn_b_army_static_m2_high",0,50,0,GRLIB_perm_log],
	["vn_b_army_static_m45",5,150,0,GRLIB_perm_tank],
	["vn_b_army_static_tow",2,200,0,GRLIB_perm_air],
	["vn_b_army_static_m101_01",10,300,0,GRLIB_perm_air],
	["vn_b_army_static_mortar_m2",15,600,0,GRLIB_perm_tank],
	["vn_b_army_static_mortar_m29",20,800,0,GRLIB_perm_tank],
	["vn_b_navy_static_l70mk2",10,300,0,GRLIB_perm_max],
	["vn_b_army_static_m101_02",10,300,0,GRLIB_perm_max]
];

// *** Static Weapon with AI ***
static_vehicles_AI = [
	"vn_b_navy_static_l70mk2"
];

support_vehicles_west = [
	["vn_i_air_ch34_01_02",5,300,15,GRLIB_perm_tank],
	["vn_b_wheeled_m54_repair",5,250,20,GRLIB_perm_inf],
	["vn_b_wheeled_m54_fuel",5,150,20,GRLIB_perm_inf],
	["vn_b_wheeled_m54_ammo",5,300,20,GRLIB_perm_tank]
];

buildings_west_overide = true;
buildings_west = [
	["Land_vn_object_ladder_01",0,0,0,0],
	["Land_vn_b_trench_firing_04",0,0,0,GRLIB_perm_inf],
	["Land_vn_b_trench_firing_05",0,0,0,GRLIB_perm_inf],
	["Land_vn_b_trench_bunker_04_01",0,0,0,GRLIB_perm_log],
	["Land_vn_b_trench_revetment_tall_09",0,0,0,0],
	["Land_vn_b_tower_01",0,0,0,GRLIB_perm_tank],
	["Land_vn_usaf_revetment_2",0,0,0,GRLIB_perm_tank],
	["Land_vn_usaf_revetment_low_2",0,0,0,GRLIB_perm_tank],
	["Land_vn_usaf_revetment_8",0,0,0,GRLIB_perm_air],
	["Land_vn_usaf_revetment_low_8",0,0,0,GRLIB_perm_air],
	["Land_vn_b_trench_20_01",0,0,0,0],
	["Land_vn_b_trench_05_01",0,0,0,0],
	["Land_vn_b_trench_tee_01",0,0,0,0],
	["Land_vn_b_trench_cross_01",0,0,0,0],
	["Land_vn_b_trench_90_01",0,0,0,0],
	["Land_vn_b_trench_45_01",0,0,0,0],
	["Land_vn_tent_mash_01_03",0,0,0,GRLIB_perm_inf],
	["Land_vn_bagfence_01_long_green_f",0,0,0,GRLIB_perm_inf],
	["Land_vn_bagfence_01_round_green_f",0,0,0,GRLIB_perm_inf],
	["Land_vn_lampshabby_f_4xdir_far",0,0,0,0],
	["Land_vn_b_trench_stair_02",0,0,0,0],
	["Land_vn_b_helipad_01",0,0,0,GRLIB_perm_inf],
	["Land_vn_usaf_revetment_helipad_01",0,0,0,GRLIB_perm_tank]
];

blufor_squad_inf_light = [
	"vn_b_men_army_02",
	"vn_b_men_army_03",
	"vn_b_men_army_07",
	"vn_b_men_army_06",
	"vn_b_men_army_12",
	"vn_b_men_army_21"
];
blufor_squad_inf = [
	"vn_b_men_army_02",
	"vn_b_men_army_03",
	"vn_b_men_army_10",
	"vn_b_men_army_06",
	"vn_b_men_army_12",
	"vn_b_men_army_06",
	"vn_b_men_army_11",
	"vn_b_men_army_21",
	"vn_b_men_army_21"
];
blufor_squad_at = [
	"vn_b_men_army_02",
	"vn_b_men_army_03",
	"vn_b_men_army_12",
	"vn_b_men_army_12",
	"vn_b_men_army_21",
	"vn_b_men_army_21"
];
blufor_squad_aa = [
	"vn_b_men_army_02",
	"vn_b_men_army_03",
	"vn_b_men_army_12",
	"vn_b_men_army_12",
	"vn_b_men_army_21",
	"vn_b_men_army_21"	
];
blufor_squad_mix = [
	"vn_b_men_army_02",
	"vn_b_men_army_03",
	"vn_b_men_army_12",
	"vn_b_men_army_05",
	"vn_b_men_army_07",
	"vn_b_men_army_06",
	"vn_b_men_army_07"
];

squads = [
	[blufor_squad_inf_light,15,400,0,GRLIB_perm_max],
	[blufor_squad_inf,25,550,0,GRLIB_perm_max],
	[blufor_squad_at,25,600,0,GRLIB_perm_max],
	[blufor_squad_aa,25,600,0,GRLIB_perm_max],
	[blufor_squad_mix,25,600,0,GRLIB_perm_max]
];

// Everything the AI troups should be able to resupply from
ai_resupply_sources_west = [
	"vn_b_wheeled_m54_ammo"
];

// Everything the AI troups should be able to healing from
ai_healing_sources_west = [
];

vehicle_rearm_sources_west = [
	"vn_b_wheeled_m54_ammo"
];

vehicle_big_units_west = [

];

GRLIB_vehicle_whitelist_west = [
    "Land_vn_usaf_revetment_helipad_01",
	"Land_vn_b_trench_firing_05",
	"Land_vn_b_trench_bunker_04_01",
	"Land_vn_b_trench_firing_04",
	"Land_vn_b_trench_revetment_tall_09",
	"Land_vn_b_tower_01",
	"Land_vn_usaf_revetment_low_8",
	"Land_vn_usaf_revetment_low_2",
	"Land_vn_object_ladder_01",
	"Land_vn_b_trench_20_01",
	"Land_vn_b_trench_05_01",
	"Land_vn_b_trench_tee_01",
	"Land_vn_b_trench_cross_01",
	"Land_vn_b_trench_90_01",
	"Land_vn_b_trench_45_01",
	"Land_vn_tent_mash_01_03",
	"Land_vn_bagfence_01_long_green_f",
	"Land_vn_bagfence_01_round_green_f",
	"vn_banner_usarmy",
	"vn_flag_usarmy",
	"Land_vn_lampshabby_f_4xdir_far",
	"Land_vn_b_trench_stair_02",
	"Land_vn_usaf_revetment_2",
	"Land_vn_usaf_revetment_8"
];

GRLIB_vehicle_blacklist_west = [

];

GRLIB_AirDrop_1 = [
	"vn_o_car_03_01",
	"vn_b_wheeled_m151_01",
	"vn_b_wheeled_m151_02"
];

GRLIB_AirDrop_2 = [
	"vn_b_wheeled_m151_mg_02",
	"vn_b_wheeled_m151_mg_03",
	"vn_b_wheeled_m151_mg_04"
];

GRLIB_AirDrop_3 = [
	"vn_b_armor_m113_01",
	"vn_b_armor_m113_acav_01",
	"vn_b_armor_m113_acav_02",
	"vn_b_armor_m113_acav_04",
	"vn_b_armor_m113_acav_06"
];

GRLIB_AirDrop_4 = [
	"vn_b_wheeled_m54_01",
	"vn_b_wheeled_m54_02"
];

GRLIB_AirDrop_5 = [
	"vn_b_wheeled_m54_mg_01",
	"vn_b_wheeled_m54_mg_03"
];

GRLIB_AirDrop_6 = [
	"vn_o_boat_01_02",
	"vn_o_boat_01_mg_02",
	"vn_o_boat_01_02",
	"vn_o_boat_01_mg_02"
];