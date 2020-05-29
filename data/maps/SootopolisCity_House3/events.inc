SootopolisCity_House3_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_WOMAN_4, 0, 2, 4, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, SootopolisCity_House3_EventScript_Woman, 0
	object_event 2, OBJ_EVENT_GFX_GIRL_2, 0, 6, 4, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, SootopolisCity_House3_EventScript_Girl, 0

SootopolisCity_House3_MapWarps:
	warp_def 3, 6, 0, 6, MAP_SOOTOPOLIS_CITY
	warp_def 4, 6, 0, 6, MAP_SOOTOPOLIS_CITY

SootopolisCity_House3_MapEvents::
	map_events SootopolisCity_House3_ObjectEvents, SootopolisCity_House3_MapWarps, 0x0, 0x0

