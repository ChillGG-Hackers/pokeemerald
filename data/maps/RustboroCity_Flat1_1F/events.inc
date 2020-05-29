RustboroCity_Flat1_1F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MAN_3, 0, 9, 4, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, RustboroCity_Flat1_1F_EventScript_Man, 0
	object_event 2, OBJ_EVENT_GFX_WOMAN_5, 0, 12, 4, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, RustboroCity_Flat1_1F_EventScript_Woman, 0

RustboroCity_Flat1_1F_MapWarps:
	warp_def 6, 7, 0, 1, MAP_RUSTBORO_CITY
	warp_def 7, 7, 0, 1, MAP_RUSTBORO_CITY
	warp_def 2, 1, 0, 0, MAP_RUSTBORO_CITY_FLAT1_2F

RustboroCity_Flat1_1F_MapEvents::
	map_events RustboroCity_Flat1_1F_ObjectEvents, RustboroCity_Flat1_1F_MapWarps, 0x0, 0x0

