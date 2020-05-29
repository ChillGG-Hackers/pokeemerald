PacifidlogTown_PokemonCenter_1F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_NURSE, 0, 7, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, PacifidlogTown_PokemonCenter_1F_EventScript_Nurse, 0
	object_event 2, OBJ_EVENT_GFX_OLD_MAN, 0, 10, 6, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, PacifidlogTown_PokemonCenter_1F_EventScript_OldMan, 0
	object_event 3, OBJ_EVENT_GFX_GIRL_2, 0, 2, 2, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, PacifidlogTown_PokemonCenter_1F_EventScript_Girl, 0
	object_event 4, OBJ_EVENT_GFX_WOMAN_1, 0, 4, 5, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, PacifidlogTown_PokemonCenter_1F_EventScript_Woman, 0
	object_event 5, OBJ_EVENT_GFX_MAN_5, 0, 12, 8, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, PacifidlogTown_PokemonCenter_1F_EventScript_ExplosionTutor, 0

PacifidlogTown_PokemonCenter_1F_MapWarps:
	warp_def 7, 8, 3, 0, MAP_PACIFIDLOG_TOWN
	warp_def 6, 8, 3, 0, MAP_PACIFIDLOG_TOWN
	warp_def 1, 6, 4, 0, MAP_PACIFIDLOG_TOWN_POKEMON_CENTER_2F

PacifidlogTown_PokemonCenter_1F_MapEvents::
	map_events PacifidlogTown_PokemonCenter_1F_ObjectEvents, PacifidlogTown_PokemonCenter_1F_MapWarps, 0x0, 0x0

