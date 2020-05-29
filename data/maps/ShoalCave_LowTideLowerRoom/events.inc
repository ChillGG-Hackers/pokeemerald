ShoalCave_LowTideLowerRoom_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_PUSHABLE_BOULDER, 0, 25, 3, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, EventScript_StrengthBoulder, FLAG_TEMP_11
	object_event 2, OBJ_EVENT_GFX_BLACK_BELT, 0, 11, 4, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, ShoalCave_LowTideLowerRoom_EventScript_BlackBelt, 0

ShoalCave_LowTideLowerRoom_MapWarps:
	warp_def 7, 2, 3, 3, MAP_SHOAL_CAVE_LOW_TIDE_INNER_ROOM
	warp_def 2, 6, 3, 4, MAP_SHOAL_CAVE_LOW_TIDE_INNER_ROOM
	warp_def 19, 11, 3, 5, MAP_SHOAL_CAVE_LOW_TIDE_INNER_ROOM
	warp_def 28, 11, 3, 0, MAP_SHOAL_CAVE_LOW_TIDE_ICE_ROOM

ShoalCave_LowTideLowerRoom_MapBGEvents:
	bg_event 18, 2, 3, BG_EVENT_PLAYER_FACING_ANY, ShoalCave_LowTideLowerRoom_EventScript_ShoalSalt4

ShoalCave_LowTideLowerRoom_MapEvents::
	map_events ShoalCave_LowTideLowerRoom_ObjectEvents, ShoalCave_LowTideLowerRoom_MapWarps, 0x0, ShoalCave_LowTideLowerRoom_MapBGEvents

