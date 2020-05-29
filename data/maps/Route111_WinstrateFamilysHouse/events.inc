Route111_WinstrateFamilysHouse_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_LASS, 0, 7, 5, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, Route111_WinstrateFamilysHouse_EventScript_Vivi, 0
	object_event 2, OBJ_EVENT_GFX_MAN_1, 0, 4, 5, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, Route111_WinstrateFamilysHouse_EventScript_Victor, 0
	object_event 3, OBJ_EVENT_GFX_POKEFAN_F, 0, 7, 4, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 0, TRAINER_TYPE_NONE, 0, Route111_WinstrateFamilysHouse_EventScript_Victoria, 0
	object_event 4, OBJ_EVENT_GFX_EXPERT_F, 0, 4, 4, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, Route111_WinstrateFamilysHouse_EventScript_Vicky, 0

Route111_WinstrateFamilysHouse_MapWarps:
	warp_def 3, 7, 0, 0, MAP_ROUTE111
	warp_def 4, 7, 0, 0, MAP_ROUTE111

Route111_WinstrateFamilysHouse_MapEvents::
	map_events Route111_WinstrateFamilysHouse_ObjectEvents, Route111_WinstrateFamilysHouse_MapWarps, 0x0, 0x0

