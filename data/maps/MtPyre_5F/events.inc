MtPyre_5F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_BLACK_BELT, 0, 3, 7, 3, MOVEMENT_TYPE_FACE_DOWN_AND_LEFT, 1, 1, TRAINER_TYPE_NORMAL, 2, MtPyre_5F_EventScript_Atsushi, 0
	object_event 2, OBJ_EVENT_GFX_ITEM_BALL, 0, 6, 11, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, MtPyre_5F_EventScript_ItemLaxIncense, FLAG_ITEM_MT_PYRE_5F_LAX_INCENSE

MtPyre_5F_MapWarps:
	warp_def 2, 1, 3, 0, MAP_MT_PYRE_6F
	warp_def 10, 5, 3, 0, MAP_MT_PYRE_4F
	warp_def 1, 10, 3, 1, MAP_MT_PYRE_6F
	warp_def 12, 10, 3, 2, MAP_MT_PYRE_4F
	warp_def 12, 12, 3, 3, MAP_MT_PYRE_4F

MtPyre_5F_MapEvents::
	map_events MtPyre_5F_ObjectEvents, MtPyre_5F_MapWarps, 0x0, 0x0

