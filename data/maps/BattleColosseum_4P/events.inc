BattleColosseum_4P_MapWarps:
	warp_def 5, 8, 3, 127, MAP_NONE
	warp_def 6, 8, 3, 127, MAP_NONE
	warp_def 7, 8, 3, 127, MAP_NONE
	warp_def 8, 8, 3, 127, MAP_NONE

BattleColosseum_4P_MapCoordEvents:
	coord_event 3, 4, 3, VAR_TEMP_0, 0, EventScript_BattleColosseum_4P_PlayerSpot0
	coord_event 3, 6, 3, VAR_TEMP_0, 0, EventScript_BattleColosseum_4P_PlayerSpot2
	coord_event 10, 4, 3, VAR_TEMP_0, 0, EventScript_BattleColosseum_4P_PlayerSpot1
	coord_event 10, 6, 3, VAR_TEMP_0, 0, EventScript_BattleColosseum_4P_PlayerSpot3

BattleColosseum_4P_MapEvents::
	map_events 0x0, BattleColosseum_4P_MapWarps, BattleColosseum_4P_MapCoordEvents, 0x0

