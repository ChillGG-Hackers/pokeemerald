BattleFrontier_BattlePalaceLobby_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_EXPERT_M, 0, 5, 6, 0, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattlePalaceLobby_EventScript_SinglesAttendant, 0
	object_event 2, OBJ_EVENT_GFX_BLACK_BELT, 0, 11, 8, 0, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattlePalaceLobby_EventScript_BlackBelt, 0
	object_event 3, OBJ_EVENT_GFX_MANIAC, 0, 24, 5, 0, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattlePalaceLobby_EventScript_Maniac, 0
	object_event 4, OBJ_EVENT_GFX_MAN_3, 0, 18, 10, 0, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattlePalaceLobby_EventScript_Man, 0
	object_event 5, OBJ_EVENT_GFX_BEAUTY, 0, 2, 10, 0, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattlePalaceLobby_EventScript_Beauty, 0
	object_event 6, OBJ_EVENT_GFX_EXPERT_M, 0, 19, 6, 0, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattlePalaceLobby_EventScript_DoublesAttendant, 0

BattleFrontier_BattlePalaceLobby_MapWarps:
	warp_def 12, 11, 0, 2, MAP_BATTLE_FRONTIER_OUTSIDE_EAST
	warp_def 13, 11, 0, 2, MAP_BATTLE_FRONTIER_OUTSIDE_EAST
	warp_def 5, 4, 3, 0, MAP_BATTLE_FRONTIER_BATTLE_PALACE_CORRIDOR

BattleFrontier_BattlePalaceLobby_MapBGEvents:
	bg_event 2, 7, 0, BG_EVENT_PLAYER_FACING_NORTH, BattleFrontier_BattlePalaceLobby_EventScript_ShowSinglesResults
	bg_event 16, 7, 0, BG_EVENT_PLAYER_FACING_NORTH, BattleFrontier_BattlePalaceLobby_EventScript_ShowDoublesResults
	bg_event 10, 4, 0, BG_EVENT_PLAYER_FACING_ANY, BattleFrontier_BattlePalaceLobby_EventScript_RulesBoard

BattleFrontier_BattlePalaceLobby_MapEvents::
	map_events BattleFrontier_BattlePalaceLobby_ObjectEvents, BattleFrontier_BattlePalaceLobby_MapWarps, 0x0, BattleFrontier_BattlePalaceLobby_MapBGEvents

