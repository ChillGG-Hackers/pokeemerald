BattleFrontier_BattlePikeLobby_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_LINK_RECEPTIONIST, 0, 5, 5, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattlePikeLobby_EventScript_Attendant, 0
	object_event 2, OBJ_EVENT_GFX_HIKER, 0, 10, 9, 3, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattlePikeLobby_EventScript_Hiker, 0
	object_event 3, OBJ_EVENT_GFX_TWIN, 0, 0, 5, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattlePikeLobby_EventScript_Twin, 0
	object_event 4, OBJ_EVENT_GFX_BEAUTY, 0, 8, 9, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattlePikeLobby_EventScript_Beauty, 0

BattleFrontier_BattlePikeLobby_MapWarps:
	warp_def 5, 12, 0, 0, MAP_BATTLE_FRONTIER_OUTSIDE_WEST
	warp_def 4, 12, 0, 0, MAP_BATTLE_FRONTIER_OUTSIDE_WEST
	warp_def 6, 12, 0, 0, MAP_BATTLE_FRONTIER_OUTSIDE_WEST

BattleFrontier_BattlePikeLobby_MapBGEvents:
	bg_event 8, 3, 0, BG_EVENT_PLAYER_FACING_ANY, BattleFrontier_BattlePikeLobby_EventScript_ShowResults
	bg_event 1, 3, 0, BG_EVENT_PLAYER_FACING_ANY, BattleFrontier_BattlePikeLobby_EventScript_RulesBoard

BattleFrontier_BattlePikeLobby_MapEvents::
	map_events BattleFrontier_BattlePikeLobby_ObjectEvents, BattleFrontier_BattlePikeLobby_MapWarps, 0x0, BattleFrontier_BattlePikeLobby_MapBGEvents

