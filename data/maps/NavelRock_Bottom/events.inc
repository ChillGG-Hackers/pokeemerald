NavelRock_Bottom_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_LUGIA, 0, 11, 13, 0, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, NavelRock_Bottom_EventScript_Lugia, FLAG_HIDE_LUGIA

NavelRock_Bottom_MapWarps:
	warp_def 14, 19, 0, 0, MAP_NAVEL_ROCK_DOWN11

NavelRock_Bottom_MapEvents::
	map_events NavelRock_Bottom_ObjectEvents, NavelRock_Bottom_MapWarps, 0x0, 0x0

