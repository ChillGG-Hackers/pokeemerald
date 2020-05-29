LilycoveCity_House2_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_FAT_MAN, 0, 0, 4, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_House2_EventScript_FatMan, 0

LilycoveCity_House2_MapWarps:
	warp_def 2, 7, 0, 9, MAP_LILYCOVE_CITY
	warp_def 3, 7, 0, 9, MAP_LILYCOVE_CITY

LilycoveCity_House2_MapEvents::
	map_events LilycoveCity_House2_ObjectEvents, LilycoveCity_House2_MapWarps, 0x0, 0x0

