OldaleTown_PokemonCenter_1F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_NURSE, 0, 7, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, OldaleTown_PokemonCenter_1F_EventScript_Nurse, 0
	object_event 2, OBJ_EVENT_GFX_GENTLEMAN, 0, 4, 4, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, OldaleTown_PokemonCenter_1F_EventScript_Gentleman, 0
	object_event 3, OBJ_EVENT_GFX_BOY_1, 0, 10, 6, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, OldaleTown_PokemonCenter_1F_EventScript_Boy, 0
	object_event 4, OBJ_EVENT_GFX_GIRL_3, 0, 3, 7, 3, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NONE, 0, OldaleTown_PokemonCenter_1F_EventScript_Girl, 0

OldaleTown_PokemonCenter_1F_MapWarps:
	warp_def 7, 8, 3, 2, MAP_OLDALE_TOWN
	warp_def 6, 8, 3, 2, MAP_OLDALE_TOWN
	warp_def 1, 6, 4, 0, MAP_OLDALE_TOWN_POKEMON_CENTER_2F

OldaleTown_PokemonCenter_1F_MapEvents::
	map_events OldaleTown_PokemonCenter_1F_ObjectEvents, OldaleTown_PokemonCenter_1F_MapWarps, 0x0, 0x0

