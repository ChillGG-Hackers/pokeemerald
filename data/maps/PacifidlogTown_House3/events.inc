PacifidlogTown_House3_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_GIRL_2, 0, 3, 5, 3, MOVEMENT_TYPE_FACE_DOWN_AND_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, PacifidlogTown_House3_EventScript_Girl, 0
	object_event 2, OBJ_EVENT_GFX_MAN_3, 0, 4, 2, 3, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NONE, 0, PacifidlogTown_House3_EventScript_Trader, 0

PacifidlogTown_House3_MapWarps:
	warp_def 4, 8, 0, 3, MAP_PACIFIDLOG_TOWN
	warp_def 5, 8, 0, 3, MAP_PACIFIDLOG_TOWN

PacifidlogTown_House3_MapEvents::
	map_events PacifidlogTown_House3_ObjectEvents, PacifidlogTown_House3_MapWarps, 0x0, 0x0

