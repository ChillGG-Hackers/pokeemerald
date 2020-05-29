LavaridgeTown_Mart_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MART_EMPLOYEE, 0, 1, 3, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, LavaridgeTown_Mart_EventScript_Clerk, 0
	object_event 2, OBJ_EVENT_GFX_EXPERT_M, 0, 4, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, LavaridgeTown_Mart_EventScript_ExpertM, 0
	object_event 3, OBJ_EVENT_GFX_OLD_WOMAN, 0, 9, 5, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, LavaridgeTown_Mart_EventScript_OldWoman, 0

LavaridgeTown_Mart_MapWarps:
	warp_def 3, 7, 0, 2, MAP_LAVARIDGE_TOWN
	warp_def 4, 7, 0, 2, MAP_LAVARIDGE_TOWN

LavaridgeTown_Mart_MapEvents::
	map_events LavaridgeTown_Mart_ObjectEvents, LavaridgeTown_Mart_MapWarps, 0x0, 0x0

