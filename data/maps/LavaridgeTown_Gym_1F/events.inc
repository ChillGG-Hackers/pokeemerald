LavaridgeTown_Gym_1F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_FLANNERY, 0, 13, 9, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, LavaridgeTown_Gym_1F_EventScript_Flannery, 0
	object_event 2, OBJ_EVENT_GFX_MAN_5, 0, 3, 14, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_BURIED, 1, LavaridgeTown_Gym_1F_EventScript_Cole, 0
	object_event 3, OBJ_EVENT_GFX_MAN_3, 0, 2, 15, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_BURIED, 1, LavaridgeTown_Gym_1F_EventScript_Gerald, 0
	object_event 4, OBJ_EVENT_GFX_MAN_5, 0, 3, 10, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_BURIED, 1, LavaridgeTown_Gym_1F_EventScript_Axle, 0
	object_event 5, OBJ_EVENT_GFX_GIRL_3, 0, 5, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_BURIED, 1, LavaridgeTown_Gym_1F_EventScript_Danielle, 0
	object_event 6, OBJ_EVENT_GFX_MAN_2, 0, 12, 16, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, LavaridgeTown_Gym_1F_EventScript_GymGuide, 0

LavaridgeTown_Gym_1F_MapWarps:
	warp_def 13, 18, 3, 1, MAP_LAVARIDGE_TOWN
	warp_def 14, 18, 3, 1, MAP_LAVARIDGE_TOWN
	warp_def 10, 18, 3, 0, MAP_LAVARIDGE_TOWN_GYM_B1F
	warp_def 8, 9, 3, 2, MAP_LAVARIDGE_TOWN_GYM_B1F
	warp_def 4, 18, 3, 4, MAP_LAVARIDGE_TOWN_GYM_B1F
	warp_def 5, 14, 3, 3, MAP_LAVARIDGE_TOWN_GYM_B1F
	warp_def 0, 17, 3, 1, MAP_LAVARIDGE_TOWN_GYM_B1F
	warp_def 5, 9, 3, 5, MAP_LAVARIDGE_TOWN_GYM_B1F
	warp_def 2, 15, 3, 6, MAP_LAVARIDGE_TOWN_GYM_B1F
	warp_def 3, 14, 3, 7, MAP_LAVARIDGE_TOWN_GYM_B1F
	warp_def 1, 14, 3, 8, MAP_LAVARIDGE_TOWN_GYM_B1F
	warp_def 0, 10, 3, 9, MAP_LAVARIDGE_TOWN_GYM_B1F
	warp_def 3, 10, 3, 10, MAP_LAVARIDGE_TOWN_GYM_B1F
	warp_def 0, 6, 3, 11, MAP_LAVARIDGE_TOWN_GYM_B1F
	warp_def 3, 6, 3, 12, MAP_LAVARIDGE_TOWN_GYM_B1F
	warp_def 5, 6, 3, 13, MAP_LAVARIDGE_TOWN_GYM_B1F
	warp_def 2, 3, 3, 14, MAP_LAVARIDGE_TOWN_GYM_B1F
	warp_def 5, 2, 3, 15, MAP_LAVARIDGE_TOWN_GYM_B1F
	warp_def 7, 2, 3, 16, MAP_LAVARIDGE_TOWN_GYM_B1F
	warp_def 8, 6, 3, 17, MAP_LAVARIDGE_TOWN_GYM_B1F
	warp_def 10, 6, 3, 18, MAP_LAVARIDGE_TOWN_GYM_B1F
	warp_def 4, 16, 0, 20, MAP_LAVARIDGE_TOWN_GYM_B1F
	warp_def 12, 3, 3, 19, MAP_LAVARIDGE_TOWN_GYM_B1F
	warp_def 14, 6, 3, 21, MAP_LAVARIDGE_TOWN_GYM_B1F
	warp_def 13, 17, 3, 22, MAP_LAVARIDGE_TOWN_GYM_B1F
	warp_def 12, 12, 3, 23, MAP_LAVARIDGE_TOWN_GYM_B1F

LavaridgeTown_Gym_1F_MapBGEvents:
	bg_event 10, 15, 0, BG_EVENT_PLAYER_FACING_NORTH, LavaridgeTown_Gym_1F_EventScript_LeftGymStatue
	bg_event 16, 15, 0, BG_EVENT_PLAYER_FACING_NORTH, LavaridgeTown_Gym_1F_EventScript_RightGymStatue

LavaridgeTown_Gym_1F_MapEvents::
	map_events LavaridgeTown_Gym_1F_ObjectEvents, LavaridgeTown_Gym_1F_MapWarps, 0x0, LavaridgeTown_Gym_1F_MapBGEvents

