Route111_OldLadysRestStop_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_EXPERT_F, 0, 6, 3, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, Route111_OldLadysRestStop_EventScript_OldLady, 0

Route111_OldLadysRestStop_MapWarps:
	warp_def 3, 7, 0, 2, MAP_ROUTE111
	warp_def 4, 7, 0, 2, MAP_ROUTE111

Route111_OldLadysRestStop_MapEvents::
	map_events Route111_OldLadysRestStop_ObjectEvents, Route111_OldLadysRestStop_MapWarps, 0x0, 0x0

