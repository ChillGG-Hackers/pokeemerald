SootopolisCity_House7_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_OLD_MAN, 0, 5, 3, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, SootopolisCity_House7_EventScript_OldMan, 0
	object_event 2, OBJ_EVENT_GFX_POKEFAN_F, 0, 1, 4, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, SootopolisCity_House7_EventScript_PokefanF, 0

SootopolisCity_House7_MapWarps:
	warp_def 3, 6, 0, 10, MAP_SOOTOPOLIS_CITY
	warp_def 4, 6, 0, 10, MAP_SOOTOPOLIS_CITY

SootopolisCity_House7_MapEvents::
	map_events SootopolisCity_House7_ObjectEvents, SootopolisCity_House7_MapWarps, 0x0, 0x0

