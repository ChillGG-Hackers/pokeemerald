PacifidlogTown_House2_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_GENTLEMAN, 0, 3, 5, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, PacifidlogTown_House2_EventScript_FanClubYoungerBrother, 0
	object_event 2, OBJ_EVENT_GFX_AZURILL, 0, 8, 6, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, PacifidlogTown_House2_EventScript_HappyAzurill, 0
	object_event 3, OBJ_EVENT_GFX_AZURILL, 0, 1, 7, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, PacifidlogTown_House2_EventScript_UnhappyAzurill, 0

PacifidlogTown_House2_MapWarps:
	warp_def 4, 8, 0, 2, MAP_PACIFIDLOG_TOWN
	warp_def 5, 8, 0, 2, MAP_PACIFIDLOG_TOWN

PacifidlogTown_House2_MapEvents::
	map_events PacifidlogTown_House2_ObjectEvents, PacifidlogTown_House2_MapWarps, 0x0, 0x0

