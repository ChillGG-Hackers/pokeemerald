CaveOfOrigin_B1F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_WALLACE, 0, 9, 13, 3, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NONE, 0, CaveOfOrigin_B1F_EventScript_Wallace, FLAG_HIDE_CAVE_OF_ORIGIN_B1F_WALLACE

CaveOfOrigin_B1F_MapWarps:
	warp_def 9, 3, 3, 1, MAP_CAVE_OF_ORIGIN_1F

CaveOfOrigin_B1F_MapEvents::
	map_events CaveOfOrigin_B1F_ObjectEvents, CaveOfOrigin_B1F_MapWarps, 0x0, 0x0

