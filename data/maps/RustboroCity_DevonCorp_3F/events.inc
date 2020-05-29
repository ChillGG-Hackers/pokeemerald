RustboroCity_DevonCorp_3F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_GENTLEMAN, 0, 17, 5, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, RustboroCity_DevonCorp_3F_EventScript_MrStone, 0
	object_event 2, OBJ_EVENT_GFX_MAN_2, 0, 3, 5, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, RustboroCity_DevonCorp_3F_EventScript_Employee, FLAG_HIDE_RUSTBORO_CITY_DEVON_CORP_3F_EMPLOYEE
	object_event 3, OBJ_EVENT_GFX_GENTLEMAN, 0, 15, 5, 3, MOVEMENT_TYPE_INVISIBLE, 1, 1, TRAINER_TYPE_NONE, 0, RustboroCity_DevonCorp_3F_EventScript_MrStone, 0

RustboroCity_DevonCorp_3F_MapWarps:
	warp_def 2, 1, 0, 1, MAP_RUSTBORO_CITY_DEVON_CORP_2F

RustboroCity_DevonCorp_3F_MapBGEvents:
	bg_event 1, 5, 3, BG_EVENT_PLAYER_FACING_ANY, RustboroCity_DevonCorp_3F_EventScript_RareRocksDisplay
	bg_event 1, 7, 3, BG_EVENT_PLAYER_FACING_ANY, RustboroCity_DevonCorp_3F_EventScript_RareRocksDisplay

RustboroCity_DevonCorp_3F_MapEvents::
	map_events RustboroCity_DevonCorp_3F_ObjectEvents, RustboroCity_DevonCorp_3F_MapWarps, 0x0, RustboroCity_DevonCorp_3F_MapBGEvents

