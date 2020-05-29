ShoalCave_LowTideIceRoom_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_ITEM_BALL, 0, 12, 8, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, ShoalCave_LowTideIceRoom_EventScript_ItemTM07, FLAG_ITEM_SHOAL_CAVE_ICE_ROOM_TM_07
	object_event 2, OBJ_EVENT_GFX_ITEM_BALL, 0, 12, 21, 4, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, ShoalCave_LowTideIceRoom_EventScript_ItemNeverMeltIce, FLAG_ITEM_SHOAL_CAVE_ICE_ROOM_NEVER_MELT_ICE

ShoalCave_LowTideIceRoom_MapWarps:
	warp_def 17, 10, 3, 3, MAP_SHOAL_CAVE_LOW_TIDE_LOWER_ROOM

ShoalCave_LowTideIceRoom_MapEvents::
	map_events ShoalCave_LowTideIceRoom_ObjectEvents, ShoalCave_LowTideIceRoom_MapWarps, 0x0, 0x0

