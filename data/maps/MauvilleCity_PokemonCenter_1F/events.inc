MauvilleCity_PokemonCenter_1F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_NURSE, 0, 7, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, MauvilleCity_PokemonCenter_1F_EventScript_Nurse, 0
	object_event 2, OBJ_EVENT_GFX_VAR_0, 0, 2, 3, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 0, TRAINER_TYPE_NONE, 0, MauvilleCity_PokemonCenter_1F_EventScript_MauvilleOldMan, 0
	object_event 3, OBJ_EVENT_GFX_WOMAN_1, 0, 8, 6, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, MauvilleCity_PokemonCenter_1F_EventScript_Woman1, 0
	object_event 4, OBJ_EVENT_GFX_WOMAN_5, 0, 11, 4, 3, MOVEMENT_TYPE_WANDER_UP_AND_DOWN, 0, 1, TRAINER_TYPE_NONE, 0, MauvilleCity_PokemonCenter_1F_EventScript_Woman2, 0
	object_event 5, OBJ_EVENT_GFX_YOUNGSTER, 0, 2, 8, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, MauvilleCity_PokemonCenter_1F_EventScript_Youngster, 0

MauvilleCity_PokemonCenter_1F_MapWarps:
	warp_def 7, 8, 3, 1, MAP_MAUVILLE_CITY
	warp_def 6, 8, 3, 1, MAP_MAUVILLE_CITY
	warp_def 1, 6, 4, 0, MAP_MAUVILLE_CITY_POKEMON_CENTER_2F

MauvilleCity_PokemonCenter_1F_MapEvents::
	map_events MauvilleCity_PokemonCenter_1F_ObjectEvents, MauvilleCity_PokemonCenter_1F_MapWarps, 0x0, 0x0

