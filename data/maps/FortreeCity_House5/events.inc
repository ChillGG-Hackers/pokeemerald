FortreeCity_House5_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_POKEFAN_F, 0, 6, 4, 3, MOVEMENT_TYPE_FACE_DOWN_UP_AND_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, FortreeCity_House5_EventScript_PokefanF, 0
	object_event 2, OBJ_EVENT_GFX_ZIGZAGOON_2, 0, 6, 3, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, FortreeCity_House5_EventScript_Zigzagoon, 0
	object_event 3, OBJ_EVENT_GFX_MAN_1, 0, 2, 4, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, FortreeCity_House5_EventScript_Man, 0

FortreeCity_House5_MapWarps:
	warp_def 3, 5, 0, 7, MAP_FORTREE_CITY
	warp_def 4, 5, 0, 7, MAP_FORTREE_CITY

FortreeCity_House5_MapEvents::
	map_events FortreeCity_House5_ObjectEvents, FortreeCity_House5_MapWarps, 0x0, 0x0

