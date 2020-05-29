BattleFrontier_Lounge5_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_LITTLE_GIRL, 0, 12, 4, 4, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_Lounge5_EventScript_NatureGirl, 0
	object_event 2, OBJ_EVENT_GFX_GENTLEMAN, 0, 0, 4, 3, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_Lounge5_EventScript_Gentleman, 0
	object_event 3, OBJ_EVENT_GFX_BLACK_BELT, 0, 6, 5, 0, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_Lounge5_EventScript_BlackBelt, 0
	object_event 4, OBJ_EVENT_GFX_LITTLE_BOY, 0, 11, 7, 0, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_Lounge5_EventScript_LittleBoy, 0

BattleFrontier_Lounge5_MapWarps:
	warp_def 1, 7, 0, 7, MAP_BATTLE_FRONTIER_OUTSIDE_EAST
	warp_def 2, 7, 0, 7, MAP_BATTLE_FRONTIER_OUTSIDE_EAST

BattleFrontier_Lounge5_MapEvents::
	map_events BattleFrontier_Lounge5_ObjectEvents, BattleFrontier_Lounge5_MapWarps, 0x0, 0x0

