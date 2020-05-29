LilycoveCity_MoveDeletersHouse_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_EXPERT_M, 0, 4, 4, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_MoveDeletersHouse_EventScript_MoveDeleter, 0

LilycoveCity_MoveDeletersHouse_MapWarps:
	warp_def 3, 7, 0, 7, MAP_LILYCOVE_CITY
	warp_def 4, 7, 0, 7, MAP_LILYCOVE_CITY

LilycoveCity_MoveDeletersHouse_MapEvents::
	map_events LilycoveCity_MoveDeletersHouse_ObjectEvents, LilycoveCity_MoveDeletersHouse_MapWarps, 0x0, 0x0

