BattleFrontier_ScottsHouse_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_SCOTT, 0, 2, 3, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_ScottsHouse_EventScript_Scott, 0

BattleFrontier_ScottsHouse_MapWarps:
	warp_def 2, 7, 3, 5, MAP_BATTLE_FRONTIER_OUTSIDE_WEST
	warp_def 3, 7, 3, 5, MAP_BATTLE_FRONTIER_OUTSIDE_WEST

BattleFrontier_ScottsHouse_MapEvents::
	map_events BattleFrontier_ScottsHouse_ObjectEvents, BattleFrontier_ScottsHouse_MapWarps, 0x0, 0x0

