BattleFrontier_BattlePyramidLobby_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_HIKER, 0, 7, 12, 4, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattlePyramidLobby_EventScript_Attendant, 0
	object_event 2, OBJ_EVENT_GFX_HEX_MANIAC, 0, 14, 13, 4, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattlePyramidLobby_EventScript_HintGiver, 0
	object_event 3, OBJ_EVENT_GFX_WOMAN_3, 0, 2, 15, 4, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattlePyramidLobby_EventScript_Woman, 0
	object_event 4, OBJ_EVENT_GFX_FAT_MAN, 0, 12, 16, 4, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattlePyramidLobby_EventScript_FatMan, 0

BattleFrontier_BattlePyramidLobby_MapWarps:
	warp_def 7, 17, 4, 3, MAP_BATTLE_FRONTIER_OUTSIDE_EAST

BattleFrontier_BattlePyramidLobby_MapBGEvents:
	bg_event 5, 12, 0, BG_EVENT_PLAYER_FACING_NORTH, BattleFrontier_BattlePyramidLobby_EventScript_ShowResults
	bg_event 1, 12, 0, BG_EVENT_PLAYER_FACING_ANY, BattleFrontier_BattlePyramidLobby_EventScript_RulesBoard

BattleFrontier_BattlePyramidLobby_MapEvents::
	map_events BattleFrontier_BattlePyramidLobby_ObjectEvents, BattleFrontier_BattlePyramidLobby_MapWarps, 0x0, BattleFrontier_BattlePyramidLobby_MapBGEvents

