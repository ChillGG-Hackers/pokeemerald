MtPyre_4F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_HEX_MANIAC, 0, 11, 7, 3, MOVEMENT_TYPE_ROTATE_CLOCKWISE, 1, 1, TRAINER_TYPE_NORMAL, 2, MtPyre_4F_EventScript_Tasha, 0
	object_event 2, OBJ_EVENT_GFX_ITEM_BALL, 0, 3, 11, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, MtPyre_4F_EventScript_ItemSeaIncense, FLAG_ITEM_MT_PYRE_4F_SEA_INCENSE

MtPyre_4F_MapWarps:
	warp_def 10, 1, 3, 1, MAP_MT_PYRE_5F
	warp_def 2, 5, 3, 1, MAP_MT_PYRE_3F
	warp_def 12, 10, 3, 3, MAP_MT_PYRE_5F
	warp_def 12, 12, 3, 4, MAP_MT_PYRE_5F
	warp_def 9, 10, 3, 2, MAP_MT_PYRE_3F
	warp_def 2, 12, 3, 3, MAP_MT_PYRE_3F

MtPyre_4F_MapEvents::
	map_events MtPyre_4F_ObjectEvents, MtPyre_4F_MapWarps, 0x0, 0x0

