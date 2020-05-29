PetalburgCity_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_WOMAN_4, 0, 16, 18, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, PetalburgCity_EventScript_WallyAunt, FLAG_HIDE_PETALBURG_CITY_WALLYS_AUNT
	object_event 2, OBJ_EVENT_GFX_WALLY, 0, 15, 10, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_HIDE_PETALBURG_CITY_WALLY
	object_event 3, OBJ_EVENT_GFX_BOY_1, 0, 8, 22, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, PetalburgCity_EventScript_Boy1, 0
	object_event 4, OBJ_EVENT_GFX_GENTLEMAN, 0, 20, 10, 3, MOVEMENT_TYPE_WANDER_UP_AND_DOWN, 0, 1, TRAINER_TYPE_NONE, 0, PetalburgCity_EventScript_Gentleman, 0
	object_event 5, OBJ_EVENT_GFX_POKEFAN_M, 0, 15, 10, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_HIDE_PETALBURG_CITY_WALLYS_UNCLE
	object_event 6, OBJ_EVENT_GFX_ITEM_BALL, 0, 19, 2, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, PetalburgCity_EventScript_ItemMaxRevive, FLAG_ITEM_PETALBURG_CITY_MAX_REVIVE
	object_event 7, OBJ_EVENT_GFX_ITEM_BALL, 0, 3, 28, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, PetalburgCity_EventScript_ItemEther, FLAG_ITEM_PETALBURG_CITY_ETHER
	object_event 8, OBJ_EVENT_GFX_BOY_2, 0, 12, 15, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, PetalburgCity_EventScript_Boy2, 0
	object_event 9, OBJ_EVENT_GFX_SCOTT, 0, 13, 12, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, 0x0, FLAG_HIDE_PETALBURG_CITY_SCOTT

PetalburgCity_MapWarps:
	warp_def 10, 19, 0, 0, MAP_PETALBURG_CITY_HOUSE1
	warp_def 7, 5, 0, 0, MAP_PETALBURG_CITY_WALLYS_HOUSE
	warp_def 15, 8, 0, 0, MAP_PETALBURG_CITY_GYM
	warp_def 20, 16, 0, 0, MAP_PETALBURG_CITY_POKEMON_CENTER_1F
	warp_def 20, 24, 0, 0, MAP_PETALBURG_CITY_HOUSE2
	warp_def 25, 12, 0, 0, MAP_PETALBURG_CITY_MART

PetalburgCity_MapCoordEvents:
	coord_event 8, 10, 3, VAR_PETALBURG_CITY_STATE, 0, PetalburgCity_EventScript_ShowGymToPlayer0
	coord_event 8, 11, 3, VAR_PETALBURG_CITY_STATE, 0, PetalburgCity_EventScript_ShowGymToPlayer1
	coord_event 8, 12, 3, VAR_PETALBURG_CITY_STATE, 0, PetalburgCity_EventScript_ShowGymToPlayer2
	coord_event 8, 13, 3, VAR_PETALBURG_CITY_STATE, 0, PetalburgCity_EventScript_ShowGymToPlayer3
	coord_event 4, 10, 3, VAR_SCOTT_PETALBURG_ENCOUNTER, 0, PetalburgCity_EventScript_Scott0
	coord_event 4, 11, 3, VAR_SCOTT_PETALBURG_ENCOUNTER, 0, PetalburgCity_EventScript_Scott1
	coord_event 4, 12, 3, VAR_SCOTT_PETALBURG_ENCOUNTER, 0, PetalburgCity_EventScript_Scott2
	coord_event 4, 13, 3, VAR_SCOTT_PETALBURG_ENCOUNTER, 0, PetalburgCity_EventScript_Scott3

PetalburgCity_MapBGEvents:
	bg_event 17, 10, 0, BG_EVENT_PLAYER_FACING_ANY, PetalburgCity_EventScript_GymSign
	bg_event 26, 12, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemartSign
	bg_event 21, 16, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemonCenterSign
	bg_event 17, 16, 0, BG_EVENT_PLAYER_FACING_ANY, PetalburgCity_EventScript_CitySign
	bg_event 22, 16, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemonCenterSign
	bg_event 27, 12, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemartSign
	bg_event 8, 9, 0, BG_EVENT_PLAYER_FACING_ANY, PetalburgCity_EventScript_WallyHouseSign
	bg_hidden_item_event 11, 29, 3, ITEM_RARE_CANDY, FLAG_HIDDEN_ITEM_PETALBURG_CITY_RARE_CANDY

PetalburgCity_MapEvents::
	map_events PetalburgCity_ObjectEvents, PetalburgCity_MapWarps, PetalburgCity_MapCoordEvents, PetalburgCity_MapBGEvents

