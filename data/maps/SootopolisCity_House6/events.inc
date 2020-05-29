SootopolisCity_House6_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_WOMAN_2, 0, 4, 3, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, SootopolisCity_House6_EventScript_Woman, 0

SootopolisCity_House6_MapWarps:
	warp_def 3, 6, 0, 9, MAP_SOOTOPOLIS_CITY
	warp_def 4, 6, 0, 9, MAP_SOOTOPOLIS_CITY

SootopolisCity_House6_MapEvents::
	map_events SootopolisCity_House6_ObjectEvents, SootopolisCity_House6_MapWarps, 0x0, 0x0

