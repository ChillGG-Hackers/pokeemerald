BattleFrontier_Lounge2_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MANIAC, 0, 8, 4, 0, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_Lounge2_EventScript_FrontierManiac, 0
	object_event 2, OBJ_EVENT_GFX_MANIAC, 0, 10, 4, 0, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_Lounge2_EventScript_Maniac1, 0
	object_event 3, OBJ_EVENT_GFX_MANIAC, 0, 10, 3, 0, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_Lounge2_EventScript_Maniac2, 0
	object_event 4, OBJ_EVENT_GFX_RUNNING_TRIATHLETE_F, 0, 4, 6, 0, MOVEMENT_TYPE_WANDER_AROUND, 1, 2, TRAINER_TYPE_NONE, 0, BattleFrontier_Lounge2_EventScript_TriathleteF, 0
	object_event 5, OBJ_EVENT_GFX_MANIAC, 0, 10, 5, 0, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_Lounge2_EventScript_Maniac3, 0

BattleFrontier_Lounge2_MapWarps:
	warp_def 1, 7, 0, 3, MAP_BATTLE_FRONTIER_OUTSIDE_WEST
	warp_def 2, 7, 0, 3, MAP_BATTLE_FRONTIER_OUTSIDE_WEST

BattleFrontier_Lounge2_MapEvents::
	map_events BattleFrontier_Lounge2_ObjectEvents, BattleFrontier_Lounge2_MapWarps, 0x0, 0x0

