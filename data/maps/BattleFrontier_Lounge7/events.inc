BattleFrontier_Lounge7_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_SAILOR, 0, 0, 7, 0, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_Lounge7_EventScript_Sailor, 0
	object_event 2, OBJ_EVENT_GFX_EXPERT_F, 0, 2, 5, 0, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_Lounge7_EventScript_LeftMoveTutor, 0
	object_event 3, OBJ_EVENT_GFX_EXPERT_F, 0, 6, 5, 0, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_Lounge7_EventScript_RightMoveTutor, 0
	object_event 4, OBJ_EVENT_GFX_GENTLEMAN, 0, 8, 3, 0, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_Lounge7_EventScript_Gentleman, 0

BattleFrontier_Lounge7_MapWarps:
	warp_def 4, 9, 0, 7, MAP_BATTLE_FRONTIER_OUTSIDE_WEST

BattleFrontier_Lounge7_MapEvents::
	map_events BattleFrontier_Lounge7_ObjectEvents, BattleFrontier_Lounge7_MapWarps, 0x0, 0x0

