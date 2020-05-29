SootopolisCity_House4_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MAN_1, 0, 2, 4, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, SootopolisCity_House4_EventScript_Man, 0
	object_event 2, OBJ_EVENT_GFX_WOMAN_4, 0, 5, 2, 3, MOVEMENT_TYPE_FACE_UP, 1, 2, TRAINER_TYPE_NONE, 0, SootopolisCity_House4_EventScript_Woman, 0
	object_event 3, OBJ_EVENT_GFX_AZUMARILL, 0, 2, 3, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, SootopolisCity_House4_EventScript_Azumarill, 0

SootopolisCity_House4_MapWarps:
	warp_def 3, 6, 0, 7, MAP_SOOTOPOLIS_CITY
	warp_def 4, 6, 0, 7, MAP_SOOTOPOLIS_CITY

SootopolisCity_House4_MapEvents::
	map_events SootopolisCity_House4_ObjectEvents, SootopolisCity_House4_MapWarps, 0x0, 0x0

