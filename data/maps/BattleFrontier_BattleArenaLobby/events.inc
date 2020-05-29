BattleFrontier_BattleArenaLobby_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_BLACK_BELT, 0, 7, 7, 0, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleArenaLobby_EventScript_Attendant, 0
	object_event 2, OBJ_EVENT_GFX_WOMAN_5, 0, 2, 10, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleArenaLobby_EventScript_Woman, 0
	object_event 3, OBJ_EVENT_GFX_MAN_5, 0, 14, 11, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleArenaLobby_EventScript_Man, 0
	object_event 4, OBJ_EVENT_GFX_CAMPER, 0, 14, 12, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleArenaLobby_EventScript_Camper, 0
	object_event 5, OBJ_EVENT_GFX_YOUNGSTER, 0, 14, 10, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleArenaLobby_EventScript_Youngster, 0

BattleFrontier_BattleArenaLobby_MapWarps:
	warp_def 7, 12, 3, 1, MAP_BATTLE_FRONTIER_OUTSIDE_EAST

BattleFrontier_BattleArenaLobby_MapBGEvents:
	bg_event 5, 9, 3, BG_EVENT_PLAYER_FACING_NORTH, BattleFrontier_BattleArenaLobby_EventScript_ShowResults
	bg_event 1, 7, 0, BG_EVENT_PLAYER_FACING_ANY, BattleFrontier_BattleArenaLobby_EventScript_RulesBoard

BattleFrontier_BattleArenaLobby_MapEvents::
	map_events BattleFrontier_BattleArenaLobby_ObjectEvents, BattleFrontier_BattleArenaLobby_MapWarps, 0x0, BattleFrontier_BattleArenaLobby_MapBGEvents

