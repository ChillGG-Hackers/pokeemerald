ShoalCave_LowTideInnerRoom_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_ITEM_BALL, 0, 26, 14, 5, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, ShoalCave_LowTideInnerRoom_EventScript_ItemRareCandy, FLAG_ITEM_SHOAL_CAVE_INNER_ROOM_RARE_CANDY

ShoalCave_LowTideInnerRoom_MapWarps:
	warp_def 34, 29, 3, 1, MAP_SHOAL_CAVE_LOW_TIDE_ENTRANCE_ROOM
	warp_def 38, 15, 3, 0, MAP_SHOAL_CAVE_LOW_TIDE_STAIRS_ROOM
	warp_def 42, 4, 3, 1, MAP_SHOAL_CAVE_LOW_TIDE_STAIRS_ROOM
	warp_def 19, 14, 4, 0, MAP_SHOAL_CAVE_LOW_TIDE_LOWER_ROOM
	warp_def 15, 19, 3, 1, MAP_SHOAL_CAVE_LOW_TIDE_LOWER_ROOM
	warp_def 30, 25, 3, 2, MAP_SHOAL_CAVE_LOW_TIDE_LOWER_ROOM
	warp_def 14, 33, 5, 2, MAP_SHOAL_CAVE_LOW_TIDE_ENTRANCE_ROOM
	warp_def 40, 33, 5, 3, MAP_SHOAL_CAVE_LOW_TIDE_ENTRANCE_ROOM

ShoalCave_LowTideInnerRoom_MapBGEvents:
	bg_event 31, 8, 5, BG_EVENT_PLAYER_FACING_ANY, ShoalCave_LowTideInnerRoom_EventScript_ShoalSalt1
	bg_event 14, 26, 3, BG_EVENT_PLAYER_FACING_ANY, ShoalCave_LowTideInnerRoom_EventScript_ShoalSalt2
	bg_event 41, 20, 5, BG_EVENT_PLAYER_FACING_ANY, ShoalCave_LowTideInnerRoom_EventScript_ShoalShell1
	bg_event 41, 10, 5, BG_EVENT_PLAYER_FACING_ANY, ShoalCave_LowTideInnerRoom_EventScript_ShoalShell2
	bg_event 6, 9, 3, BG_EVENT_PLAYER_FACING_ANY, ShoalCave_LowTideInnerRoom_EventScript_ShoalShell3
	bg_event 16, 13, 5, BG_EVENT_PLAYER_FACING_ANY, ShoalCave_LowTideInnerRoom_EventScript_ShoalShell4

ShoalCave_LowTideInnerRoom_MapEvents::
	map_events ShoalCave_LowTideInnerRoom_ObjectEvents, ShoalCave_LowTideInnerRoom_MapWarps, 0x0, ShoalCave_LowTideInnerRoom_MapBGEvents

