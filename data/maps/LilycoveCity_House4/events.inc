LilycoveCity_House4_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MAN_4, 0, 1, 4, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, LilycoveCity_House4_EventScript_Man1, 0
	object_event 2, OBJ_EVENT_GFX_MAN_1, 0, 7, 4, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, LilycoveCity_House4_EventScript_Man2, 0

LilycoveCity_House4_MapWarps:
	warp_def 3, 8, 0, 11, MAP_LILYCOVE_CITY
	warp_def 4, 8, 0, 11, MAP_LILYCOVE_CITY

LilycoveCity_House4_MapEvents::
	map_events LilycoveCity_House4_ObjectEvents, LilycoveCity_House4_MapWarps, 0x0, 0x0

