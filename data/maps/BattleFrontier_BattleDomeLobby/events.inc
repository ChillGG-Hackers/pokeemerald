BattleFrontier_BattleDomeLobby_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_TEALA, 0, 5, 10, 0, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleDomeLobby_EventScript_SinglesAttendant, 0
	object_event 2, OBJ_EVENT_GFX_MAN_3, 0, 1, 11, 0, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleDomeLobby_EventScript_Man, 0
	object_event 3, OBJ_EVENT_GFX_LASS, 0, 14, 14, 0, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleDomeLobby_EventScript_Lass, 0
	object_event 4, OBJ_EVENT_GFX_FAT_MAN, 0, 18, 14, 0, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleDomeLobby_EventScript_FatMan, 0
	object_event 5, OBJ_EVENT_GFX_MANIAC, 0, 8, 14, 0, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleDomeLobby_EventScript_Maniac, 0
	object_event 6, OBJ_EVENT_GFX_TEALA, 0, 17, 10, 0, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattleDomeLobby_EventScript_DoublesAttendant, 0

BattleFrontier_BattleDomeLobby_MapWarps:
	warp_def 11, 16, 0, 1, MAP_BATTLE_FRONTIER_OUTSIDE_WEST
	warp_def 12, 16, 0, 1, MAP_BATTLE_FRONTIER_OUTSIDE_WEST

BattleFrontier_BattleDomeLobby_MapBGEvents:
	bg_event 4, 10, 0, BG_EVENT_PLAYER_FACING_ANY, BattleFrontier_BattleDomeLobby_EventScript_ShowSinglesResults
	bg_event 7, 10, 0, BG_EVENT_PLAYER_FACING_ANY, BattleFrontier_BattleDomeLobby_EventScript_ShowPrevTourneyTree
	bg_event 18, 10, 0, BG_EVENT_PLAYER_FACING_ANY, BattleFrontier_BattleDomeLobby_EventScript_ShowDoublesResults
	bg_event 15, 10, 0, BG_EVENT_PLAYER_FACING_ANY, BattleFrontier_BattleDomeLobby_EventScript_RulesBoard

BattleFrontier_BattleDomeLobby_MapEvents::
	map_events BattleFrontier_BattleDomeLobby_ObjectEvents, BattleFrontier_BattleDomeLobby_MapWarps, 0x0, BattleFrontier_BattleDomeLobby_MapBGEvents

