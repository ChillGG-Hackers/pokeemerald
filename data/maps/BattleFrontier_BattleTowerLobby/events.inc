BattleFrontier_BattleTowerLobby_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_TEALA, 0, 6, 5, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleTowerLobby_EventScript_SinglesAttendant, 0
	object_event 2, OBJ_EVENT_GFX_MAN_4, 0, 23, 5, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleTowerLobby_EventScript_FeelingsMan, 0
	object_event 3, OBJ_EVENT_GFX_WOMAN_5, 0, 17, 8, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleTowerLobby_EventScript_Woman, 0
	object_event 4, OBJ_EVENT_GFX_BOY_1, 0, 15, 9, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleTowerLobby_EventScript_Boy, 0
	object_event 5, OBJ_EVENT_GFX_REPORTER_F, 0, 11, 9, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleTowerLobby_EventScript_Reporter, FLAG_HIDE_BATTLE_TOWER_REPORTER
	object_event 6, OBJ_EVENT_GFX_VAR_0, 0, 1, 5, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleTowerLobby_EventScript_Apprentice, FLAG_HIDE_APPRENTICE
	object_event 7, OBJ_EVENT_GFX_TEALA, 0, 10, 5, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleTowerLobby_EventScript_DoublesAttendant, 0
	object_event 8, OBJ_EVENT_GFX_TEALA, 0, 14, 5, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleTowerLobby_EventScript_MultisAttendant, 0
	object_event 9, OBJ_EVENT_GFX_TEALA, 0, 18, 5, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleTowerLobby_EventScript_LinkMultisAttendant, 0

BattleFrontier_BattleTowerLobby_MapWarps:
	warp_def 12, 9, 3, 0, MAP_BATTLE_FRONTIER_OUTSIDE_EAST
	warp_def 13, 9, 3, 0, MAP_BATTLE_FRONTIER_OUTSIDE_EAST
	warp_def 6, 1, 0, 0, MAP_BATTLE_FRONTIER_BATTLE_TOWER_BATTLE_ROOM

BattleFrontier_BattleTowerLobby_MapBGEvents:
	bg_event 4, 5, 0, BG_EVENT_PLAYER_FACING_NORTH, BattleFrontier_BattleTowerLobby_EventScript_ShowSinglesResults
	bg_event 8, 5, 0, BG_EVENT_PLAYER_FACING_NORTH, BattleFrontier_BattleTowerLobby_EventScript_ShowDoublesResults
	bg_event 12, 5, 0, BG_EVENT_PLAYER_FACING_NORTH, BattleFrontier_BattleTowerLobby_EventScript_ShowMultisResults
	bg_event 16, 5, 0, BG_EVENT_PLAYER_FACING_NORTH, BattleFrontier_BattleTowerLobby_EventScript_ShowLinkMultisResults
	bg_event 2, 1, 0, BG_EVENT_PLAYER_FACING_ANY, BattleFrontier_BattleTowerLobby_EventScript_RulesBoard

BattleFrontier_BattleTowerLobby_MapEvents::
	map_events BattleFrontier_BattleTowerLobby_ObjectEvents, BattleFrontier_BattleTowerLobby_MapWarps, 0x0, BattleFrontier_BattleTowerLobby_MapBGEvents

