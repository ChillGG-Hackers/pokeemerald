BattleFrontier_Mart_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MART_EMPLOYEE, 0, 1, 3, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, BattleFrontier_Mart_EventScript_Clerk, 0
	object_event 2, OBJ_EVENT_GFX_OLD_WOMAN, 0, 5, 4, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, BattleFrontier_Mart_EventScript_OldWoman, 0
	object_event 3, OBJ_EVENT_GFX_OLD_MAN, 0, 5, 5, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, BattleFrontier_Mart_EventScript_OldMan, 0
	object_event 4, OBJ_EVENT_GFX_BOY_2, 0, 8, 4, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, BattleFrontier_Mart_EventScript_Boy, 0

BattleFrontier_Mart_MapWarps:
	warp_def 3, 7, 0, 4, MAP_BATTLE_FRONTIER_OUTSIDE_WEST
	warp_def 4, 7, 0, 4, MAP_BATTLE_FRONTIER_OUTSIDE_WEST

BattleFrontier_Mart_MapEvents::
	map_events BattleFrontier_Mart_ObjectEvents, BattleFrontier_Mart_MapWarps, 0x0, 0x0

