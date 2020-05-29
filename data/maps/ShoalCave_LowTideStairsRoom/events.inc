ShoalCave_LowTideStairsRoom_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_ITEM_BALL, 0, 13, 12, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, ShoalCave_LowTideStairsRoom_EventScript_ItemIceHeal, FLAG_ITEM_SHOAL_CAVE_STAIRS_ROOM_ICE_HEAL

ShoalCave_LowTideStairsRoom_MapWarps:
	warp_def 3, 12, 3, 1, MAP_SHOAL_CAVE_LOW_TIDE_INNER_ROOM
	warp_def 7, 4, 3, 2, MAP_SHOAL_CAVE_LOW_TIDE_INNER_ROOM

ShoalCave_LowTideStairsRoom_MapBGEvents:
	bg_event 11, 11, 3, BG_EVENT_PLAYER_FACING_ANY, ShoalCave_LowTideStairsRoom_EventScript_ShoalSalt3

ShoalCave_LowTideStairsRoom_MapEvents::
	map_events ShoalCave_LowTideStairsRoom_ObjectEvents, ShoalCave_LowTideStairsRoom_MapWarps, 0x0, ShoalCave_LowTideStairsRoom_MapBGEvents

