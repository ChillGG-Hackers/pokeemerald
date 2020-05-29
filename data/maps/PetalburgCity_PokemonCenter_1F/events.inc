PetalburgCity_PokemonCenter_1F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_NURSE, 0, 7, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, PetalburgCity_PokemonCenter_1F_EventScript_Nurse, 0
	object_event 2, OBJ_EVENT_GFX_MAN_4, 0, 11, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, MysteryEventClub_EventScript_Man, 0
	object_event 3, OBJ_EVENT_GFX_FAT_MAN, 0, 2, 3, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, PetalburgCity_PokemonCenter_1F_EventScript_FatMan, 0
	object_event 4, OBJ_EVENT_GFX_YOUNGSTER, 0, 9, 6, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, PetalburgCity_PokemonCenter_1F_EventScript_Youngster, 0
	object_event 5, OBJ_EVENT_GFX_WOMAN_5, 0, 5, 4, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, PetalburgCity_PokemonCenter_1F_EventScript_Woman, 0

PetalburgCity_PokemonCenter_1F_MapWarps:
	warp_def 7, 8, 3, 3, MAP_PETALBURG_CITY
	warp_def 6, 8, 3, 3, MAP_PETALBURG_CITY
	warp_def 1, 6, 4, 0, MAP_PETALBURG_CITY_POKEMON_CENTER_2F

PetalburgCity_PokemonCenter_1F_MapEvents::
	map_events PetalburgCity_PokemonCenter_1F_ObjectEvents, PetalburgCity_PokemonCenter_1F_MapWarps, 0x0, 0x0

