PacifidlogTown_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_GIRL_1, 0, 10, 23, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, PacifidlogTown_EventScript_Girl, 0
	object_event 2, OBJ_EVENT_GFX_FISHERMAN, 0, 11, 14, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, PacifidlogTown_EventScript_Fisherman, 0
	object_event 3, OBJ_EVENT_GFX_NINJA_BOY, 0, 9, 16, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, PacifidlogTown_EventScript_NinjaBoy, 0

PacifidlogTown_MapWarps:
	warp_def 8, 15, 0, 0, MAP_PACIFIDLOG_TOWN_POKEMON_CENTER_1F
	warp_def 16, 13, 0, 0, MAP_PACIFIDLOG_TOWN_HOUSE1
	warp_def 3, 22, 0, 0, MAP_PACIFIDLOG_TOWN_HOUSE2
	warp_def 12, 24, 0, 0, MAP_PACIFIDLOG_TOWN_HOUSE3
	warp_def 2, 12, 0, 0, MAP_PACIFIDLOG_TOWN_HOUSE4
	warp_def 17, 21, 0, 0, MAP_PACIFIDLOG_TOWN_HOUSE5

PacifidlogTown_MapBGEvents:
	bg_event 9, 15, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemonCenterSign
	bg_event 7, 16, 0, BG_EVENT_PLAYER_FACING_ANY, PacifidlogTown_EventScript_TownSign
	bg_event 10, 15, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemonCenterSign

PacifidlogTown_MapEvents::
	map_events PacifidlogTown_ObjectEvents, PacifidlogTown_MapWarps, 0x0, PacifidlogTown_MapBGEvents

