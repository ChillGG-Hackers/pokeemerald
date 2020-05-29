BattleFrontier_RankingHall_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_TEALA, 0, 24, 13, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_RankingHall_EventScript_Attendant, 0
	object_event 2, OBJ_EVENT_GFX_NINJA_BOY, 0, 4, 10, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_RankingHall_EventScript_NinjaBoy, 0
	object_event 3, OBJ_EVENT_GFX_BOY_3, 0, 44, 11, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_RankingHall_EventScript_Boy, 0

BattleFrontier_RankingHall_MapWarps:
	warp_def 26, 14, 3, 4, MAP_BATTLE_FRONTIER_OUTSIDE_EAST
	warp_def 27, 14, 3, 4, MAP_BATTLE_FRONTIER_OUTSIDE_EAST

BattleFrontier_RankingHall_MapBGEvents:
	bg_event 26, 9, 0, BG_EVENT_PLAYER_FACING_NORTH, BattleFrontier_RankingHall_EventScript_TowerSinglesRecords
	bg_event 23, 8, 0, BG_EVENT_PLAYER_FACING_NORTH, BattleFrontier_RankingHall_EventScript_TowerDoublesRecords
	bg_event 26, 5, 0, BG_EVENT_PLAYER_FACING_NORTH, BattleFrontier_RankingHall_EventScript_TowerMultisRecords
	bg_event 29, 8, 0, BG_EVENT_PLAYER_FACING_NORTH, BattleFrontier_RankingHall_EventScript_TowerLinkRecords
	bg_event 42, 9, 0, BG_EVENT_PLAYER_FACING_NORTH, BattleFrontier_RankingHall_EventScript_ArenaRecords
	bg_event 46, 9, 0, BG_EVENT_PLAYER_FACING_NORTH, BattleFrontier_RankingHall_EventScript_PalaceRecords
	bg_event 10, 9, 0, BG_EVENT_PLAYER_FACING_NORTH, BattleFrontier_RankingHall_EventScript_FactoryRecords
	bg_event 8, 7, 0, BG_EVENT_PLAYER_FACING_NORTH, BattleFrontier_RankingHall_EventScript_DomeRecords
	bg_event 6, 9, 0, BG_EVENT_PLAYER_FACING_NORTH, BattleFrontier_RankingHall_EventScript_PikeRecords
	bg_event 44, 7, 0, BG_EVENT_PLAYER_FACING_NORTH, BattleFrontier_RankingHall_EventScript_PyramidRecords
	bg_event 16, 8, 0, BG_EVENT_PLAYER_FACING_ANY, BattleFrontier_RankingHall_EventScript_DomePikeFactoryRecordsSign
	bg_event 36, 8, 0, BG_EVENT_PLAYER_FACING_ANY, BattleFrontier_RankingHall_EventScript_PalaceArenaPyramidRecordsSIgn

BattleFrontier_RankingHall_MapEvents::
	map_events BattleFrontier_RankingHall_ObjectEvents, BattleFrontier_RankingHall_MapWarps, 0x0, BattleFrontier_RankingHall_MapBGEvents

