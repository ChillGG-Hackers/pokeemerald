BattleFrontier_BattleFactoryLobby_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_SCIENTIST_1, 0, 4, 7, 0, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleFactoryLobby_EventScript_SinglesAttendant, 0
	object_event 2, OBJ_EVENT_GFX_WOMAN_1, 0, 3, 11, 0, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleFactoryLobby_EventScript_Woman, 0
	object_event 3, OBJ_EVENT_GFX_CAMPER, 0, 14, 11, 0, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleFactoryLobby_EventScript_Camper, 0
	object_event 4, OBJ_EVENT_GFX_PICNICKER, 0, 13, 11, 0, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleFactoryLobby_EventScript_Picnicker, 0
	object_event 5, OBJ_EVENT_GFX_FAT_MAN, 0, 6, 10, 0, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleFactoryLobby_EventScript_FatMan, 0
	object_event 6, OBJ_EVENT_GFX_SCIENTIST_1, 0, 14, 7, 0, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleFactoryLobby_EventScript_DoublesAttendant, 0

BattleFrontier_BattleFactoryLobby_MapWarps:
	warp_def 9, 11, 0, 2, MAP_BATTLE_FRONTIER_OUTSIDE_WEST
	warp_def 10, 11, 0, 2, MAP_BATTLE_FRONTIER_OUTSIDE_WEST

BattleFrontier_BattleFactoryLobby_MapBGEvents:
	bg_event 2, 7, 0, BG_EVENT_PLAYER_FACING_NORTH, BattleFrontier_BattleFactoryLobby_EventScript_ShowSinglesResults
	bg_event 11, 7, 0, BG_EVENT_PLAYER_FACING_NORTH, BattleFrontier_BattleFactoryLobby_EventScript_ShowDoublesResults
	bg_event 9, 4, 0, BG_EVENT_PLAYER_FACING_ANY, BattleFrontier_BattleFactoryLobby_EventScript_RulesBoard

BattleFrontier_BattleFactoryLobby_MapEvents::
	map_events BattleFrontier_BattleFactoryLobby_ObjectEvents, BattleFrontier_BattleFactoryLobby_MapWarps, 0x0, BattleFrontier_BattleFactoryLobby_MapBGEvents

