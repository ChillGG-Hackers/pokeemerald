FortreeCity_Gym_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_WINONA, 0, 15, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, FortreeCity_Gym_EventScript_Winona, 0
	object_event 2, OBJ_EVENT_GFX_MAN_5, 0, 4, 14, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NORMAL, 3, FortreeCity_Gym_EventScript_Jared, 0
	object_event 3, OBJ_EVENT_GFX_CAMPER, 0, 10, 10, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NORMAL, 2, FortreeCity_Gym_EventScript_Flint, 0
	object_event 4, OBJ_EVENT_GFX_PICNICKER, 0, 5, 17, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NORMAL, 1, FortreeCity_Gym_EventScript_Ashley, 0
	object_event 5, OBJ_EVENT_GFX_MAN_5, 0, 9, 8, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NORMAL, 2, FortreeCity_Gym_EventScript_Edwardo, 0
	object_event 6, OBJ_EVENT_GFX_MAN_2, 0, 15, 21, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, FortreeCity_Gym_EventScript_GymGuide, 0
	object_event 7, OBJ_EVENT_GFX_MAN_5, 0, 4, 23, 3, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NORMAL, 1, FortreeCity_Gym_EventScript_Humberto, 0
	object_event 8, OBJ_EVENT_GFX_MAN_5, 0, 1, 10, 3, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NORMAL, 3, FortreeCity_Gym_EventScript_Darius, 0

FortreeCity_Gym_MapWarps:
	warp_def 15, 24, 0, 2, MAP_FORTREE_CITY
	warp_def 16, 24, 0, 2, MAP_FORTREE_CITY

FortreeCity_Gym_MapBGEvents:
	bg_event 14, 21, 0, BG_EVENT_PLAYER_FACING_NORTH, FortreeCity_Gym_EventScript_LeftGymStatue
	bg_event 17, 21, 0, BG_EVENT_PLAYER_FACING_NORTH, FortreeCity_Gym_EventScript_RightGymStatue

FortreeCity_Gym_MapEvents::
	map_events FortreeCity_Gym_ObjectEvents, FortreeCity_Gym_MapWarps, 0x0, FortreeCity_Gym_MapBGEvents

