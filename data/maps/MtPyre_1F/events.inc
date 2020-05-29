MtPyre_1F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_OLD_WOMAN, 0, 21, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, MtPyre_1F_EventScript_CleanseTagWoman, 0
	object_event 2, OBJ_EVENT_GFX_POKEFAN_F, 0, 17, 8, 3, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NONE, 0, MtPyre_1F_EventScript_PokefanF, 0
	object_event 3, OBJ_EVENT_GFX_MAN_4, 0, 13, 10, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, MtPyre_1F_EventScript_Man, 0

MtPyre_1F_MapWarps:
	warp_def 17, 18, 3, 0, MAP_ROUTE122
	warp_def 3, 6, 3, 0, MAP_MT_PYRE_EXTERIOR
	warp_def 18, 18, 3, 0, MAP_ROUTE122
	warp_def 4, 6, 3, 0, MAP_MT_PYRE_EXTERIOR
	warp_def 11, 1, 3, 0, MAP_MT_PYRE_2F
	warp_def 20, 9, 3, 4, MAP_MT_PYRE_2F

MtPyre_1F_MapEvents::
	map_events MtPyre_1F_ObjectEvents, MtPyre_1F_MapWarps, 0x0, 0x0

