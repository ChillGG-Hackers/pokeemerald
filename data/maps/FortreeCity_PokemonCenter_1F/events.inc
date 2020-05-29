FortreeCity_PokemonCenter_1F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_NURSE, 0, 7, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, FortreeCity_PokemonCenter_1F_EventScript_Nurse, 0
	object_event 2, OBJ_EVENT_GFX_GENTLEMAN, 0, 4, 7, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, FortreeCity_PokemonCenter_1F_EventScript_Gentleman, 0
	object_event 3, OBJ_EVENT_GFX_MAN_3, 0, 8, 5, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, FortreeCity_PokemonCenter_1F_EventScript_Man, 0
	object_event 4, OBJ_EVENT_GFX_BOY_3, 0, 2, 3, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, FortreeCity_PokemonCenter_1F_EventScript_Boy, 0

FortreeCity_PokemonCenter_1F_MapWarps:
	warp_def 7, 8, 3, 0, MAP_FORTREE_CITY
	warp_def 6, 8, 3, 0, MAP_FORTREE_CITY
	warp_def 1, 6, 4, 0, MAP_FORTREE_CITY_POKEMON_CENTER_2F

FortreeCity_PokemonCenter_1F_MapEvents::
	map_events FortreeCity_PokemonCenter_1F_ObjectEvents, FortreeCity_PokemonCenter_1F_MapWarps, 0x0, 0x0

