MirageTower_3F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_BREAKABLE_ROCK, 0, 3, 7, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, EventScript_RockSmash, FLAG_TEMP_11
	object_event 2, OBJ_EVENT_GFX_BREAKABLE_ROCK, 0, 4, 8, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, EventScript_RockSmash, FLAG_TEMP_12

MirageTower_3F_MapWarps:
	warp_def 18, 12, 3, 0, MAP_MIRAGE_TOWER_2F
	warp_def 2, 4, 0, 0, MAP_MIRAGE_TOWER_4F

MirageTower_3F_MapEvents::
	map_events MirageTower_3F_ObjectEvents, MirageTower_3F_MapWarps, 0x0, 0x0

