SootopolisCity_House5_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MANIAC, 0, 3, 3, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, SootopolisCity_House5_EventScript_Maniac, 0
	object_event 2, OBJ_EVENT_GFX_GIRL_3, 0, 6, 3, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, SootopolisCity_House5_EventScript_Girl, 0

SootopolisCity_House5_MapWarps:
	warp_def 3, 6, 0, 8, MAP_SOOTOPOLIS_CITY
	warp_def 4, 6, 0, 8, MAP_SOOTOPOLIS_CITY

SootopolisCity_House5_MapEvents::
	map_events SootopolisCity_House5_ObjectEvents, SootopolisCity_House5_MapWarps, 0x0, 0x0

