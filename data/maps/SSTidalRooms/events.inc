SSTidalRooms_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_POKEFAN_M, 0, 4, 7, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NORMAL, 0, SSTidalRooms_EventScript_Colton, 0
	object_event 2, OBJ_EVENT_GFX_GENTLEMAN, 0, 34, 11, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NORMAL, 3, SSTidalRooms_EventScript_Micah, 0
	object_event 3, OBJ_EVENT_GFX_GENTLEMAN, 0, 21, 5, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NORMAL, 0, SSTidalRooms_EventScript_Thomas, 0
	object_event 4, OBJ_EVENT_GFX_MAN_4, 0, 5, 14, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NORMAL, 1, SSTidalRooms_EventScript_Jed, 0
	object_event 5, OBJ_EVENT_GFX_WOMAN_4, 0, 4, 14, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NORMAL, 1, SSTidalRooms_EventScript_Lea, 0
	object_event 6, OBJ_EVENT_GFX_RICH_BOY, 0, 22, 11, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NORMAL, 3, SSTidalRooms_EventScript_Garret, 0
	object_event 7, OBJ_EVENT_GFX_WOMAN_2, 0, 15, 6, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NORMAL, 0, SSTidalRooms_EventScript_Naomi, 0
	object_event 8, OBJ_EVENT_GFX_MANIAC, 0, 28, 5, 3, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NONE, 0, SSTidalRooms_EventScript_SnatchGiver, FLAG_HIDE_SS_TIDAL_ROOMS_SNATCH_GIVER

SSTidalRooms_MapWarps:
	warp_def 4, 16, 0, 0, MAP_SS_TIDAL_CORRIDOR
	warp_def 5, 16, 0, 0, MAP_SS_TIDAL_CORRIDOR
	warp_def 13, 16, 0, 1, MAP_SS_TIDAL_CORRIDOR
	warp_def 14, 16, 0, 1, MAP_SS_TIDAL_CORRIDOR
	warp_def 22, 16, 0, 2, MAP_SS_TIDAL_CORRIDOR
	warp_def 23, 16, 0, 2, MAP_SS_TIDAL_CORRIDOR
	warp_def 31, 16, 0, 3, MAP_SS_TIDAL_CORRIDOR
	warp_def 32, 16, 0, 3, MAP_SS_TIDAL_CORRIDOR
	warp_def 4, 1, 0, 4, MAP_SS_TIDAL_CORRIDOR
	warp_def 13, 1, 0, 5, MAP_SS_TIDAL_CORRIDOR
	warp_def 22, 1, 0, 6, MAP_SS_TIDAL_CORRIDOR
	warp_def 31, 1, 0, 7, MAP_SS_TIDAL_CORRIDOR

SSTidalRooms_MapBGEvents:
	bg_event 15, 11, 0, BG_EVENT_PLAYER_FACING_ANY, SSTidalRooms_EventScript_Bed
	bg_event 15, 12, 0, BG_EVENT_PLAYER_FACING_ANY, SSTidalRooms_EventScript_Bed

SSTidalRooms_MapEvents::
	map_events SSTidalRooms_ObjectEvents, SSTidalRooms_MapWarps, 0x0, SSTidalRooms_MapBGEvents

