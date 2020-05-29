MauvilleCity_Gym_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_WATTSON, 0, 5, 2, 0, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, MauvilleCity_Gym_EventScript_Wattson, FLAG_HIDE_MAUVILLE_GYM_WATTSON
	object_event 2, OBJ_EVENT_GFX_MAN_5, 0, 7, 8, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NORMAL, 1, MauvilleCity_Gym_EventScript_Shawn, 0
	object_event 3, OBJ_EVENT_GFX_GIRL_3, 0, 1, 16, 0, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NORMAL, 2, MauvilleCity_Gym_EventScript_Vivian, 0
	object_event 4, OBJ_EVENT_GFX_YOUNGSTER, 0, 5, 10, 0, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NORMAL, 2, MauvilleCity_Gym_EventScript_Ben, 0
	object_event 5, OBJ_EVENT_GFX_MAN_5, 0, 1, 13, 0, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NORMAL, 2, MauvilleCity_Gym_EventScript_Kirk, 0
	object_event 6, OBJ_EVENT_GFX_MAN_2, 0, 7, 20, 0, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, MauvilleCity_Gym_EventScript_GymGuide, 0
	object_event 7, OBJ_EVENT_GFX_MANIAC, 0, 7, 10, 3, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NORMAL, 1, MauvilleCity_Gym_EventScript_Angelo, 0

MauvilleCity_Gym_MapWarps:
	warp_def 4, 20, 0, 0, MAP_MAUVILLE_CITY
	warp_def 5, 20, 0, 0, MAP_MAUVILLE_CITY

MauvilleCity_Gym_MapCoordEvents:
	coord_event 4, 12, 3, VAR_TEMP_0, 0, MauvilleCity_Gym_EventScript_Switch2
	coord_event 3, 9, 3, VAR_TEMP_0, 0, MauvilleCity_Gym_EventScript_Switch3
	coord_event 0, 15, 3, VAR_TEMP_0, 0, MauvilleCity_Gym_EventScript_Switch1
	coord_event 8, 9, 3, VAR_TEMP_0, 0, MauvilleCity_Gym_EventScript_Switch4

MauvilleCity_Gym_MapBGEvents:
	bg_event 3, 18, 0, BG_EVENT_PLAYER_FACING_NORTH, MauvilleCity_Gym_EventScript_LeftGymStatue
	bg_event 6, 18, 0, BG_EVENT_PLAYER_FACING_NORTH, MauvilleCity_Gym_EventScript_RightGymStatue

MauvilleCity_Gym_MapEvents::
	map_events MauvilleCity_Gym_ObjectEvents, MauvilleCity_Gym_MapWarps, MauvilleCity_Gym_MapCoordEvents, MauvilleCity_Gym_MapBGEvents

