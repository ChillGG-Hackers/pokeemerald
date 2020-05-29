DewfordTown_Gym_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_BRAWLY, 0, 4, 3, 0, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, DewfordTown_Gym_EventScript_Brawly, 0
	object_event 2, OBJ_EVENT_GFX_BLACK_BELT, 0, 2, 18, 0, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NORMAL, 3, DewfordTown_Gym_EventScript_Takao, 0
	object_event 3, OBJ_EVENT_GFX_GIRL_3, 0, 15, 3, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NORMAL, 3, DewfordTown_Gym_EventScript_Jocelyn, 0
	object_event 4, OBJ_EVENT_GFX_GIRL_3, 0, 12, 25, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NORMAL, 2, DewfordTown_Gym_EventScript_Laura, 0
	object_event 5, OBJ_EVENT_GFX_MAN_2, 0, 5, 24, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, DewfordTown_Gym_EventScript_GymGuide, 0
	object_event 6, OBJ_EVENT_GFX_BLACK_BELT, 0, 7, 8, 1, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NORMAL, 3, DewfordTown_Gym_EventScript_Cristian, 0
	object_event 7, OBJ_EVENT_GFX_GIRL_3, 0, 16, 9, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NORMAL, 3, DewfordTown_Gym_EventScript_Lilith, 0
	object_event 8, OBJ_EVENT_GFX_SAILOR, 0, 14, 12, 1, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NORMAL, 2, DewfordTown_Gym_EventScript_Brenden, 0

DewfordTown_Gym_MapWarps:
	warp_def 5, 27, 0, 2, MAP_DEWFORD_TOWN
	warp_def 6, 27, 0, 2, MAP_DEWFORD_TOWN

DewfordTown_Gym_MapBGEvents:
	bg_event 4, 23, 3, BG_EVENT_PLAYER_FACING_NORTH, DewfordTown_Gym_EventScript_LeftGymStatue
	bg_event 7, 23, 3, BG_EVENT_PLAYER_FACING_NORTH, DewfordTown_Gym_EventScript_RightGymStatue
	bg_event 4, 24, 0, BG_EVENT_PLAYER_FACING_NORTH, DewfordTown_Gym_EventScript_LeftGymStatue
	bg_event 7, 24, 0, BG_EVENT_PLAYER_FACING_NORTH, DewfordTown_Gym_EventScript_RightGymStatue

DewfordTown_Gym_MapEvents::
	map_events DewfordTown_Gym_ObjectEvents, DewfordTown_Gym_MapWarps, 0x0, DewfordTown_Gym_MapBGEvents

