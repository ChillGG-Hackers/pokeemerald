SlateportCity_Mart_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MART_EMPLOYEE, 0, 1, 3, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, SlateportCity_Mart_EventScript_Clerk, 0
	object_event 2, OBJ_EVENT_GFX_BLACK_BELT, 0, 4, 2, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, SlateportCity_Mart_EventScript_BlackBelt, 0
	object_event 3, OBJ_EVENT_GFX_MAN_3, 0, 5, 5, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, SlateportCity_Mart_EventScript_Man, 0

SlateportCity_Mart_MapWarps:
	warp_def 3, 7, 0, 1, MAP_SLATEPORT_CITY
	warp_def 4, 7, 0, 1, MAP_SLATEPORT_CITY

SlateportCity_Mart_MapEvents::
	map_events SlateportCity_Mart_ObjectEvents, SlateportCity_Mart_MapWarps, 0x0, 0x0

