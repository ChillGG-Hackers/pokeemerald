MtChimney_CableCarStation_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_BEAUTY, 0, 6, 6, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, MtChimney_CableCarStation_EventScript_Attendant, 0
	object_event 2, OBJ_EVENT_GFX_CABLE_CAR, 0, 6, 3, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, 0

MtChimney_CableCarStation_MapWarps:
	warp_def 6, 11, 0, 0, MAP_MT_CHIMNEY
	warp_def 7, 11, 0, 1, MAP_MT_CHIMNEY

MtChimney_CableCarStation_MapEvents::
	map_events MtChimney_CableCarStation_ObjectEvents, MtChimney_CableCarStation_MapWarps, 0x0, 0x0

