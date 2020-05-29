PacifidlogTown_House5_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_EXPERT_M, 0, 9, 4, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, PacifidlogTown_House5_EventScript_MirageIslandWatcher, 0
	object_event 2, OBJ_EVENT_GFX_GENTLEMAN, 0, 3, 4, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, PacifidlogTown_House5_EventScript_Gentleman, 0

PacifidlogTown_House5_MapWarps:
	warp_def 4, 8, 0, 5, MAP_PACIFIDLOG_TOWN
	warp_def 5, 8, 0, 5, MAP_PACIFIDLOG_TOWN

PacifidlogTown_House5_MapEvents::
	map_events PacifidlogTown_House5_ObjectEvents, PacifidlogTown_House5_MapWarps, 0x0, 0x0

