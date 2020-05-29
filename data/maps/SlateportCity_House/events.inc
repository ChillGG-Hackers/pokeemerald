SlateportCity_House_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_POKEFAN_M, 0, 4, 4, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, SlateportCity_House_EventScript_PokefanM, 0
	object_event 2, OBJ_EVENT_GFX_GIRL_3, 0, 7, 4, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, SlateportCity_House_EventScript_Girl, 0

SlateportCity_House_MapWarps:
	warp_def 3, 7, 0, 10, MAP_SLATEPORT_CITY
	warp_def 4, 7, 0, 10, MAP_SLATEPORT_CITY

SlateportCity_House_MapEvents::
	map_events SlateportCity_House_ObjectEvents, SlateportCity_House_MapWarps, 0x0, 0x0

