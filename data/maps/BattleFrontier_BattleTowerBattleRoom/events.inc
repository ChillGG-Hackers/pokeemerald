BattleFrontier_BattleTowerBattleRoom_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_VAR_0, 0, 5, 1, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_HIDE_BATTLE_TOWER_OPPONENT
	object_event 2, OBJ_EVENT_GFX_TEALA, 0, 1, 7, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, 0
	object_event 3, OBJ_EVENT_GFX_TEALA, 0, 4, 8, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, 0

BattleFrontier_BattleTowerBattleRoom_MapWarps:
	warp_def 5, 8, 0, 2, MAP_BATTLE_FRONTIER_BATTLE_TOWER_LOBBY
	warp_def 6, 8, 0, 2, MAP_BATTLE_FRONTIER_BATTLE_TOWER_LOBBY

BattleFrontier_BattleTowerBattleRoom_MapEvents::
	map_events BattleFrontier_BattleTowerBattleRoom_ObjectEvents, BattleFrontier_BattleTowerBattleRoom_MapWarps, 0x0, 0x0

