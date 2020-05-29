BattleFrontier_Lounge1_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_OLD_MAN, 0, 0, 6, 0, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_Lounge1_EventScript_Breeder, 0
	object_event 2, OBJ_EVENT_GFX_BOY_3, 0, 7, 6, 0, MOVEMENT_TYPE_WANDER_AROUND, 1, 2, TRAINER_TYPE_NONE, 0, BattleFrontier_Lounge1_EventScript_Boy1, 0
	object_event 3, OBJ_EVENT_GFX_BOY_2, 0, 5, 4, 0, MOVEMENT_TYPE_WANDER_AROUND, 2, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_Lounge1_EventScript_Boy2, 0

BattleFrontier_Lounge1_MapWarps:
	warp_def 4, 9, 0, 5, MAP_BATTLE_FRONTIER_OUTSIDE_EAST

BattleFrontier_Lounge1_MapEvents::
	map_events BattleFrontier_Lounge1_ObjectEvents, BattleFrontier_Lounge1_MapWarps, 0x0, 0x0

