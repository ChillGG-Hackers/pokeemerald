RustboroCity_DevonCorp_1F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_DEVON_EMPLOYEE, 0, 2, 6, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, RustboroCity_DevonCorp_1F_EventScript_Employee, 0
	object_event 2, OBJ_EVENT_GFX_DEVON_EMPLOYEE, 0, 15, 5, 3, MOVEMENT_TYPE_WANDER_AROUND, 2, 1, TRAINER_TYPE_NONE, 0, RustboroCity_DevonCorp_1F_EventScript_StairGuard, 0
	object_event 3, OBJ_EVENT_GFX_WOMAN_3, 0, 5, 3, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, RustboroCity_DevonCorp_1F_EventScript_Greeter, 0

RustboroCity_DevonCorp_1F_MapWarps:
	warp_def 5, 8, 0, 5, MAP_RUSTBORO_CITY
	warp_def 6, 8, 0, 6, MAP_RUSTBORO_CITY
	warp_def 14, 1, 0, 0, MAP_RUSTBORO_CITY_DEVON_CORP_2F

RustboroCity_DevonCorp_1F_MapBGEvents:
	bg_event 3, 2, 0, BG_EVENT_PLAYER_FACING_ANY, RustboroCity_DevonCorp_1F_EventScript_ProductsDisplay
	bg_event 8, 2, 0, BG_EVENT_PLAYER_FACING_ANY, RustboroCity_DevonCorp_1F_EventScript_RocksMetalDisplay

RustboroCity_DevonCorp_1F_MapEvents::
	map_events RustboroCity_DevonCorp_1F_ObjectEvents, RustboroCity_DevonCorp_1F_MapWarps, 0x0, RustboroCity_DevonCorp_1F_MapBGEvents

