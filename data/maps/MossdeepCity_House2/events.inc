MossdeepCity_House2_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MAN_4, 0, 6, 6, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, MossdeepCity_House2_EventScript_Man, 0
	object_event 2, OBJ_EVENT_GFX_TWIN, 0, 4, 4, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, MossdeepCity_House2_EventScript_Twin, 0
	object_event 3, OBJ_EVENT_GFX_WINGULL, 0, 4, 5, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, MossdeepCity_House2_EventScript_Wingull, FLAG_HIDE_MOSSDEEP_CITY_HOUSE_2_WINGULL

MossdeepCity_House2_MapWarps:
	warp_def 3, 8, 0, 3, MAP_MOSSDEEP_CITY
	warp_def 4, 8, 0, 3, MAP_MOSSDEEP_CITY

MossdeepCity_House2_MapEvents::
	map_events MossdeepCity_House2_ObjectEvents, MossdeepCity_House2_MapWarps, 0x0, 0x0

