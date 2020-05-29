RustboroCity_House2_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_POKEFAN_F, 0, 4, 4, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, RustboroCity_House2_EventScript_PokefanF, 0
	object_event 2, OBJ_EVENT_GFX_LITTLE_GIRL, 0, 4, 5, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, RustboroCity_House2_EventScript_LittleGirl, 0

RustboroCity_House2_MapWarps:
	warp_def 5, 8, 0, 9, MAP_RUSTBORO_CITY
	warp_def 6, 8, 0, 9, MAP_RUSTBORO_CITY

RustboroCity_House2_MapEvents::
	map_events RustboroCity_House2_ObjectEvents, RustboroCity_House2_MapWarps, 0x0, 0x0

