RustboroCity_House3_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_OLD_MAN, 0, 4, 5, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, RustboroCity_House3_EventScript_OldMan, 0
	object_event 2, OBJ_EVENT_GFX_OLD_WOMAN, 0, 7, 5, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, RustboroCity_House3_EventScript_OldWoman, 0
	object_event 3, OBJ_EVENT_GFX_PIKACHU, 0, 4, 4, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, RustboroCity_House3_EventScript_Pekachu, 0

RustboroCity_House3_MapWarps:
	warp_def 5, 8, 0, 11, MAP_RUSTBORO_CITY
	warp_def 6, 8, 0, 11, MAP_RUSTBORO_CITY

RustboroCity_House3_MapEvents::
	map_events RustboroCity_House3_ObjectEvents, RustboroCity_House3_MapWarps, 0x0, 0x0

