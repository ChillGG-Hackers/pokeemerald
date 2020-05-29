Route109_SeashoreHouse_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_POKEFAN_M, 0, 6, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, Route109_SeashoreHouse_EventScript_Owner, 0
	object_event 2, OBJ_EVENT_GFX_SAILOR, 0, 2, 3, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NORMAL, 2, Route109_SeashoreHouse_EventScript_Dwayne, 0
	object_event 3, OBJ_EVENT_GFX_TUBER_M, 0, 14, 9, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NORMAL, 2, Route109_SeashoreHouse_EventScript_Simon, 0
	object_event 4, OBJ_EVENT_GFX_BEAUTY, 0, 10, 5, 3, MOVEMENT_TYPE_FACE_LEFT_AND_RIGHT, 0, 0, TRAINER_TYPE_NORMAL, 2, Route109_SeashoreHouse_EventScript_Johanna, 0

Route109_SeashoreHouse_MapWarps:
	warp_def 6, 9, 0, 0, MAP_ROUTE109
	warp_def 7, 9, 0, 0, MAP_ROUTE109

Route109_SeashoreHouse_MapEvents::
	map_events Route109_SeashoreHouse_ObjectEvents, Route109_SeashoreHouse_MapWarps, 0x0, 0x0

