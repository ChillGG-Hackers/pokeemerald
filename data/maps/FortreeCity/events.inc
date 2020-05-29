FortreeCity_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MAN_2, 0, 31, 3, 4, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, FortreeCity_EventScript_Man, 0
	object_event 2, OBJ_EVENT_GFX_GIRL_1, 0, 32, 16, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, FortreeCity_EventScript_Girl, 0
	object_event 3, OBJ_EVENT_GFX_WOMAN_5, 0, 32, 10, 3, MOVEMENT_TYPE_WANDER_UP_AND_DOWN, 0, 1, TRAINER_TYPE_NONE, 0, FortreeCity_EventScript_Woman, 0
	object_event 4, OBJ_EVENT_GFX_BOY_1, 0, 11, 14, 4, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, FortreeCity_EventScript_Boy, 0
	object_event 5, OBJ_EVENT_GFX_OLD_MAN, 0, 8, 10, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, FortreeCity_EventScript_OldMan, 0
	object_event 6, OBJ_EVENT_GFX_GAMEBOY_KID, 0, 9, 16, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, FortreeCity_EventScript_GameboyKid, 0
	object_event 7, OBJ_EVENT_GFX_KECLEON_1, 0, 25, 8, 3, MOVEMENT_TYPE_INVISIBLE, 1, 1, TRAINER_TYPE_NONE, 0, FortreeCity_EventScript_Kecleon, FLAG_HIDE_FORTREE_CITY_KECLEON

FortreeCity_MapWarps:
	warp_def 5, 6, 0, 0, MAP_FORTREE_CITY_POKEMON_CENTER_1F
	warp_def 10, 3, 0, 0, MAP_FORTREE_CITY_HOUSE1
	warp_def 22, 11, 0, 0, MAP_FORTREE_CITY_GYM
	warp_def 4, 14, 0, 0, MAP_FORTREE_CITY_MART
	warp_def 17, 3, 0, 0, MAP_FORTREE_CITY_HOUSE2
	warp_def 25, 3, 0, 0, MAP_FORTREE_CITY_HOUSE3
	warp_def 32, 2, 0, 0, MAP_FORTREE_CITY_HOUSE4
	warp_def 12, 13, 0, 0, MAP_FORTREE_CITY_HOUSE5
	warp_def 37, 13, 0, 0, MAP_FORTREE_CITY_DECORATION_SHOP

FortreeCity_MapBGEvents:
	bg_event 6, 9, 0, BG_EVENT_PLAYER_FACING_ANY, FortreeCity_EventScript_CitySign
	bg_event 7, 6, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemonCenterSign
	bg_event 5, 14, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemartSign
	bg_event 26, 10, 0, BG_EVENT_PLAYER_FACING_ANY, FortreeCity_EventScript_GymSign
	bg_event 6, 6, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemonCenterSign
	bg_event 6, 14, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemartSign

FortreeCity_MapEvents::
	map_events FortreeCity_ObjectEvents, FortreeCity_MapWarps, 0x0, FortreeCity_MapBGEvents

