SouthernIsland_Exterior_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_SAILOR, 0, 13, 23, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, SouthernIsland_Exterior_EventScript_Sailor, 0
	object_event 2, OBJ_EVENT_GFX_SS_TIDAL, 0, 13, 25, 1, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, 0

SouthernIsland_Exterior_MapWarps:
	warp_def 14, 5, 3, 0, MAP_SOUTHERN_ISLAND_INTERIOR
	warp_def 15, 5, 3, 1, MAP_SOUTHERN_ISLAND_INTERIOR

SouthernIsland_Exterior_MapBGEvents:
	bg_event 16, 7, 3, BG_EVENT_PLAYER_FACING_ANY, SouthernIsland_Exterior_EventScript_Sign

SouthernIsland_Exterior_MapEvents::
	map_events SouthernIsland_Exterior_ObjectEvents, SouthernIsland_Exterior_MapWarps, 0x0, SouthernIsland_Exterior_MapBGEvents

