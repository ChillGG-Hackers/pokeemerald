EverGrandeCity_PokemonCenter_1F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_NURSE, 0, 7, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, EverGrandeCity_PokemonCenter_1F_EventScript_Nurse, 0
	object_event 2, OBJ_EVENT_GFX_WOMAN_5, 0, 5, 5, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, EverGrandeCity_PokemonCenter_1F_EventScript_Woman, 0
	object_event 3, OBJ_EVENT_GFX_EXPERT_M, 0, 10, 7, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, EverGrandeCity_PokemonCenter_1F_EventScript_ExpertM, 0
	object_event 4, OBJ_EVENT_GFX_SCOTT, 0, 9, 4, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, EverGrandeCity_PokemonCenter_1F_EventScript_Scott, FLAG_HIDE_EVER_GRANDE_POKEMON_CENTER_1F_SCOTT

EverGrandeCity_PokemonCenter_1F_MapWarps:
	warp_def 7, 8, 3, 1, MAP_EVER_GRANDE_CITY
	warp_def 6, 8, 3, 1, MAP_EVER_GRANDE_CITY
	warp_def 1, 6, 4, 0, MAP_EVER_GRANDE_CITY_POKEMON_CENTER_2F

EverGrandeCity_PokemonCenter_1F_MapEvents::
	map_events EverGrandeCity_PokemonCenter_1F_ObjectEvents, EverGrandeCity_PokemonCenter_1F_MapWarps, 0x0, 0x0

