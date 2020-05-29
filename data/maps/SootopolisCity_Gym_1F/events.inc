SootopolisCity_Gym_1F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_JUAN, 0, 8, 2, 0, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, SootopolisCity_Gym_1F_EventScript_Juan, 0
	object_event 2, OBJ_EVENT_GFX_MAN_2, 0, 7, 24, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, SootopolisCity_Gym_1F_EventScript_GymGuide, 0

SootopolisCity_Gym_1F_MapWarps:
	warp_def 8, 25, 0, 2, MAP_SOOTOPOLIS_CITY
	warp_def 9, 25, 0, 2, MAP_SOOTOPOLIS_CITY
	warp_def 11, 22, 3, 0, MAP_SOOTOPOLIS_CITY_GYM_B1F

SootopolisCity_Gym_1F_MapBGEvents:
	bg_event 6, 24, 0, BG_EVENT_PLAYER_FACING_ANY, SootopolisCity_Gym_1F_EventScript_LeftGymStatue
	bg_event 10, 24, 0, BG_EVENT_PLAYER_FACING_NORTH, SootopolisCity_Gym_1F_EventScript_RightGymStatue

SootopolisCity_Gym_1F_MapEvents::
	map_events SootopolisCity_Gym_1F_ObjectEvents, SootopolisCity_Gym_1F_MapWarps, 0x0, SootopolisCity_Gym_1F_MapBGEvents

