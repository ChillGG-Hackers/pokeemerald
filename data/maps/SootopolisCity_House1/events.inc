SootopolisCity_House1_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_BLACK_BELT, 0, 2, 4, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, SootopolisCity_House1_EventScript_BrickBreakBlackBelt, 0
	object_event 2, OBJ_EVENT_GFX_KECLEON_1, 0, 2, 3, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, SootopolisCity_House1_EventScript_Kecleon, 0

SootopolisCity_House1_MapWarps:
	warp_def 3, 6, 0, 4, MAP_SOOTOPOLIS_CITY
	warp_def 4, 6, 0, 4, MAP_SOOTOPOLIS_CITY

SootopolisCity_House1_MapEvents::
	map_events SootopolisCity_House1_ObjectEvents, SootopolisCity_House1_MapWarps, 0x0, 0x0

