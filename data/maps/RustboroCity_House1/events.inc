RustboroCity_House1_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_CAMPER, 0, 6, 4, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, RustboroCity_House1_EventScript_Trader, 0
	object_event 2, OBJ_EVENT_GFX_HIKER, 0, 9, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, RustboroCity_House1_EventScript_Hiker, 0

RustboroCity_House1_MapWarps:
	warp_def 5, 7, 0, 7, MAP_RUSTBORO_CITY
	warp_def 6, 7, 0, 7, MAP_RUSTBORO_CITY

RustboroCity_House1_MapEvents::
	map_events RustboroCity_House1_ObjectEvents, RustboroCity_House1_MapWarps, 0x0, 0x0

