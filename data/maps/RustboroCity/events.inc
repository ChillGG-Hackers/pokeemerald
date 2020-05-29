RustboroCity_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_WOMAN_5, 0, 22, 34, 3, MOVEMENT_TYPE_WANDER_UP_AND_DOWN, 0, 1, TRAINER_TYPE_NONE, 0, RustboroCity_EventScript_Woman, 0
	object_event 2, OBJ_EVENT_GFX_FAT_MAN, 0, 19, 13, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, RustboroCity_EventScript_FatMan, 0
	object_event 3, OBJ_EVENT_GFX_NINJA_BOY, 0, 25, 37, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, RustboroCity_EventScript_NinjaBoy, 0
	object_event 4, OBJ_EVENT_GFX_TWIN, 0, 21, 46, 3, MOVEMENT_TYPE_WANDER_UP_AND_DOWN, 0, 1, TRAINER_TYPE_NONE, 0, RustboroCity_EventScript_Twin, 0
	object_event 5, OBJ_EVENT_GFX_BOY_2, 0, 12, 45, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, RustboroCity_EventScript_Boy2, 0
	object_event 6, OBJ_EVENT_GFX_MAN_3, 0, 26, 23, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, RustboroCity_EventScript_Man1, 0
	object_event 7, OBJ_EVENT_GFX_LITTLE_BOY, 0, 24, 51, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, RustboroCity_EventScript_LittleBoy, 0
	object_event 8, OBJ_EVENT_GFX_LITTLE_GIRL, 0, 25, 51, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, RustboroCity_EventScript_LittleGirl, 0
	object_event 9, OBJ_EVENT_GFX_MAN_2, 0, 30, 10, 3, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NONE, 0, RustboroCity_EventScript_DevonEmployee1, FLAG_HIDE_RUSTBORO_CITY_DEVON_EMPLOYEE_1
	object_event 10, OBJ_EVENT_GFX_AQUA_MEMBER_M, 0, 13, 21, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_HIDE_RUSTBORO_CITY_AQUA_GRUNT
	object_event 11, OBJ_EVENT_GFX_DEVON_EMPLOYEE, 0, 13, 34, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, RustboroCity_EventScript_DevonEmployee2, 0
	object_event 12, OBJ_EVENT_GFX_ITEM_BALL, 0, 36, 51, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, RustboroCity_EventScript_ItemXDefend, FLAG_ITEM_RUSTBORO_CITY_X_DEFEND
	object_event 13, OBJ_EVENT_GFX_MAN_4, 0, 19, 27, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 1, TRAINER_TYPE_NONE, 0, RustboroCity_EventScript_Man2, 0
	object_event 14, OBJ_EVENT_GFX_VAR_0, 0, 16, 50, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, RustboroCity_EventScript_Rival, FLAG_HIDE_RUSTBORO_CITY_RIVAL
	object_event 15, OBJ_EVENT_GFX_SCIENTIST_1, 0, 11, 15, 0, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, 0x0, FLAG_HIDE_RUSTBORO_CITY_SCIENTIST
	object_event 16, OBJ_EVENT_GFX_BOY_1, 0, 31, 36, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 1, TRAINER_TYPE_NONE, 0, RustboroCity_EventScript_Boy1, 0

RustboroCity_MapWarps:
	warp_def 27, 19, 0, 0, MAP_RUSTBORO_CITY_GYM
	warp_def 13, 30, 0, 0, MAP_RUSTBORO_CITY_FLAT1_1F
	warp_def 16, 45, 0, 0, MAP_RUSTBORO_CITY_MART
	warp_def 16, 38, 0, 0, MAP_RUSTBORO_CITY_POKEMON_CENTER_1F
	warp_def 27, 34, 0, 0, MAP_RUSTBORO_CITY_POKEMON_SCHOOL
	warp_def 11, 15, 0, 0, MAP_RUSTBORO_CITY_DEVON_CORP_1F
	warp_def 12, 15, 0, 1, MAP_RUSTBORO_CITY_DEVON_CORP_1F
	warp_def 33, 19, 0, 0, MAP_RUSTBORO_CITY_HOUSE1
	warp_def 9, 38, 0, 0, MAP_RUSTBORO_CITY_CUTTERS_HOUSE
	warp_def 30, 28, 0, 0, MAP_RUSTBORO_CITY_HOUSE2
	warp_def 5, 51, 0, 0, MAP_RUSTBORO_CITY_FLAT2_1F
	warp_def 26, 46, 0, 0, MAP_RUSTBORO_CITY_HOUSE3

RustboroCity_MapCoordEvents:
	coord_event 23, 20, 3, VAR_RUSTBORO_CITY_STATE, 1, RustboroCity_EventScript_StolenGoodsTrigger0
	coord_event 23, 21, 3, VAR_RUSTBORO_CITY_STATE, 1, RustboroCity_EventScript_StolenGoodsTrigger1
	coord_event 23, 22, 3, VAR_RUSTBORO_CITY_STATE, 1, RustboroCity_EventScript_StolenGoodsTrigger2
	coord_event 23, 23, 3, VAR_RUSTBORO_CITY_STATE, 1, RustboroCity_EventScript_StolenGoodsTrigger3
	coord_event 23, 24, 3, VAR_RUSTBORO_CITY_STATE, 1, RustboroCity_EventScript_StolenGoodsTrigger4
	coord_event 30, 9, 3, VAR_RUSTBORO_CITY_STATE, 2, RustboroCity_EventScript_HelpGetGoodsTrigger0
	coord_event 29, 10, 3, VAR_RUSTBORO_CITY_STATE, 2, RustboroCity_EventScript_HelpGetGoodsTrigger1
	coord_event 30, 11, 3, VAR_RUSTBORO_CITY_STATE, 2, RustboroCity_EventScript_HelpGetGoodsTrigger2
	coord_event 30, 12, 3, VAR_RUSTBORO_CITY_STATE, 2, RustboroCity_EventScript_HelpGetGoodsTrigger3
	coord_event 30, 9, 3, VAR_RUSTBORO_CITY_STATE, 4, RustboroCity_EventScript_ReturnGoodsTrigger0
	coord_event 31, 10, 3, VAR_RUSTBORO_CITY_STATE, 4, RustboroCity_EventScript_ReturnGoodsTrigger1
	coord_event 30, 11, 3, VAR_RUSTBORO_CITY_STATE, 4, RustboroCity_EventScript_ReturnGoodsTrigger2
	coord_event 30, 12, 3, VAR_RUSTBORO_CITY_STATE, 4, RustboroCity_EventScript_ReturnGoodsTrigger3
	coord_event 12, 53, 3, VAR_RUSTBORO_CITY_STATE, 7, RustboroCity_EventScript_RivalTrigger0
	coord_event 13, 53, 3, VAR_RUSTBORO_CITY_STATE, 7, RustboroCity_EventScript_RivalTrigger1
	coord_event 14, 53, 3, VAR_RUSTBORO_CITY_STATE, 7, RustboroCity_EventScript_RivalTrigger2
	coord_event 15, 53, 3, VAR_RUSTBORO_CITY_STATE, 7, RustboroCity_EventScript_RivalTrigger3
	coord_event 16, 53, 3, VAR_RUSTBORO_CITY_STATE, 7, RustboroCity_EventScript_RivalTrigger4
	coord_event 17, 53, 3, VAR_RUSTBORO_CITY_STATE, 7, RustboroCity_EventScript_RivalTrigger5
	coord_event 18, 53, 3, VAR_RUSTBORO_CITY_STATE, 7, RustboroCity_EventScript_RivalTrigger6
	coord_event 19, 53, 3, VAR_RUSTBORO_CITY_STATE, 7, RustboroCity_EventScript_RivalTrigger7

RustboroCity_MapBGEvents:
	bg_event 23, 19, 0, BG_EVENT_PLAYER_FACING_ANY, RustboroCity_EventScript_GymSign
	bg_event 25, 35, 0, BG_EVENT_PLAYER_FACING_ANY, RustboroCity_EventScript_TrainersSchoolSign
	bg_event 17, 45, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemartSign
	bg_event 18, 38, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemonCenterSign
	bg_event 19, 49, 0, BG_EVENT_PLAYER_FACING_ANY, RustboroCity_EventScript_CitySign
	bg_event 18, 45, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemartSign
	bg_event 17, 38, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemonCenterSign
	bg_event 17, 20, 0, BG_EVENT_PLAYER_FACING_ANY, RustboroCity_EventScript_DevonCorpSign
	bg_event 30, 8, 0, BG_EVENT_PLAYER_FACING_ANY, RustboroCity_EventScript_TunnelSign
	bg_event 12, 38, 3, BG_EVENT_PLAYER_FACING_ANY, RustboroCity_EventScript_CuttersHouseSign

RustboroCity_MapEvents::
	map_events RustboroCity_ObjectEvents, RustboroCity_MapWarps, RustboroCity_MapCoordEvents, RustboroCity_MapBGEvents

