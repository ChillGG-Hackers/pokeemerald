PacifidlogTown_House4_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_WOMAN_2, 0, 3, 4, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, PacifidlogTown_House4_EventScript_Woman, 0
	object_event 2, OBJ_EVENT_GFX_LITTLE_GIRL, 0, 7, 5, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, PacifidlogTown_House4_EventScript_LittleGirl, 0
	object_event 3, OBJ_EVENT_GFX_BOY_1, 0, 7, 4, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, PacifidlogTown_House4_EventScript_Boy, 0

PacifidlogTown_House4_MapWarps:
	warp_def 4, 8, 0, 4, MAP_PACIFIDLOG_TOWN
	warp_def 5, 8, 0, 4, MAP_PACIFIDLOG_TOWN

PacifidlogTown_House4_MapEvents::
	map_events PacifidlogTown_House4_ObjectEvents, PacifidlogTown_House4_MapWarps, 0x0, 0x0

