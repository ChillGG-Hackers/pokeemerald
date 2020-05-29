RustboroCity_Gym_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_ROXANNE, 0, 5, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, RustboroCity_Gym_EventScript_Roxanne, 0
	object_event 2, OBJ_EVENT_GFX_YOUNGSTER, 0, 5, 13, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NORMAL, 2, RustboroCity_Gym_EventScript_Josh, 0
	object_event 3, OBJ_EVENT_GFX_YOUNGSTER, 0, 3, 9, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NORMAL, 3, RustboroCity_Gym_EventScript_Tommy, 0
	object_event 4, OBJ_EVENT_GFX_MAN_2, 0, 3, 18, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, RustboroCity_Gym_EventScript_GymGuide, 0
	object_event 5, OBJ_EVENT_GFX_HIKER, 0, 1, 6, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NORMAL, 3, RustboroCity_Gym_EventScript_Marc, 0

RustboroCity_Gym_MapWarps:
	warp_def 5, 19, 0, 0, MAP_RUSTBORO_CITY
	warp_def 6, 19, 0, 0, MAP_RUSTBORO_CITY

RustboroCity_Gym_MapBGEvents:
	bg_event 2, 18, 0, BG_EVENT_PLAYER_FACING_NORTH, RustboroCity_Gym_EventScript_LeftGymStatue
	bg_event 8, 18, 0, BG_EVENT_PLAYER_FACING_NORTH, RustboroCity_Gym_EventScript_RightGymStatue

RustboroCity_Gym_MapEvents::
	map_events RustboroCity_Gym_ObjectEvents, RustboroCity_Gym_MapWarps, 0x0, RustboroCity_Gym_MapBGEvents

