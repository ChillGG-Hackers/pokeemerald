VerdanturfTown_House_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_WOMAN_5, 0, 4, 5, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, VerdanturfTown_House_EventScript_Woman1, 0
	object_event 2, OBJ_EVENT_GFX_WOMAN_5, 0, 4, 4, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, VerdanturfTown_House_EventScript_Woman2, 0

VerdanturfTown_House_MapWarps:
	warp_def 3, 8, 0, 6, MAP_VERDANTURF_TOWN
	warp_def 4, 8, 0, 6, MAP_VERDANTURF_TOWN

VerdanturfTown_House_MapEvents::
	map_events VerdanturfTown_House_ObjectEvents, VerdanturfTown_House_MapWarps, 0x0, 0x0

