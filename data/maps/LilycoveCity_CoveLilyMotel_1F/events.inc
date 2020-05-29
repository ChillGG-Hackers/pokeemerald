LilycoveCity_CoveLilyMotel_1F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MAN_1, 0, 10, 3, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_CoveLilyMotel_1F_EventScript_MotelOwner, 0

LilycoveCity_CoveLilyMotel_1F_MapWarps:
	warp_def 5, 8, 0, 1, MAP_LILYCOVE_CITY
	warp_def 6, 8, 0, 1, MAP_LILYCOVE_CITY
	warp_def 2, 1, 0, 0, MAP_LILYCOVE_CITY_COVE_LILY_MOTEL_2F

LilycoveCity_CoveLilyMotel_1F_MapCoordEvents:
	coord_event 10, 2, 3, VAR_TEMP_1, 0, LilycoveCity_CoveLilyMotel_1F_EventScript_BlockingTV

LilycoveCity_CoveLilyMotel_1F_MapEvents::
	map_events LilycoveCity_CoveLilyMotel_1F_ObjectEvents, LilycoveCity_CoveLilyMotel_1F_MapWarps, LilycoveCity_CoveLilyMotel_1F_MapCoordEvents, 0x0

