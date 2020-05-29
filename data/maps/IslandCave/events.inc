IslandCave_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_REGICE, 0, 8, 7, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, IslandCave_EventScript_Regice, FLAG_HIDE_REGICE

IslandCave_MapWarps:
	warp_def 8, 29, 3, 0, MAP_ROUTE105
	warp_def 8, 20, 0, 2, MAP_ISLAND_CAVE
	warp_def 8, 11, 3, 1, MAP_ISLAND_CAVE

IslandCave_MapBGEvents:
	bg_event 8, 20, 0, BG_EVENT_PLAYER_FACING_ANY, IslandCave_EventScript_CaveEntranceMiddle
	bg_event 7, 20, 0, BG_EVENT_PLAYER_FACING_ANY, IslandCave_EventScript_CaveEntranceSide
	bg_event 9, 20, 0, BG_EVENT_PLAYER_FACING_ANY, IslandCave_EventScript_CaveEntranceSide

IslandCave_MapEvents::
	map_events IslandCave_ObjectEvents, IslandCave_MapWarps, 0x0, IslandCave_MapBGEvents

