SootopolisCity_Mart_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MART_EMPLOYEE, 0, 1, 3, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, SootopolisCity_Mart_EventScript_Clerk, 0
	object_event 2, OBJ_EVENT_GFX_FAT_MAN, 0, 5, 5, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, SootopolisCity_Mart_EventScript_FatMan, 0
	object_event 3, OBJ_EVENT_GFX_GENTLEMAN, 0, 9, 5, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, SootopolisCity_Mart_EventScript_Gentleman, 0

SootopolisCity_Mart_MapWarps:
	warp_def 3, 7, 0, 1, MAP_SOOTOPOLIS_CITY
	warp_def 4, 7, 0, 1, MAP_SOOTOPOLIS_CITY

SootopolisCity_Mart_MapEvents::
	map_events SootopolisCity_Mart_ObjectEvents, SootopolisCity_Mart_MapWarps, 0x0, 0x0

