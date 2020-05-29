MirageTower_4F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_FOSSIL, 0, 5, 4, 4, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, MirageTower_4F_EventScript_RootFossil, FLAG_HIDE_MIRAGE_TOWER_ROOT_FOSSIL
	object_event 2, OBJ_EVENT_GFX_FOSSIL, 0, 7, 4, 0, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, MirageTower_4F_EventScript_ClawFossil, FLAG_HIDE_MIRAGE_TOWER_CLAW_FOSSIL
	object_event 3, OBJ_EVENT_GFX_BREAKABLE_ROCK, 0, 6, 7, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, EventScript_RockSmash, FLAG_TEMP_11

MirageTower_4F_MapWarps:
	warp_def 1, 4, 3, 1, MAP_MIRAGE_TOWER_3F

MirageTower_4F_MapEvents::
	map_events MirageTower_4F_ObjectEvents, MirageTower_4F_MapWarps, 0x0, 0x0

