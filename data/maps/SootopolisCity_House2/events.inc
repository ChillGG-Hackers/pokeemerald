SootopolisCity_House2_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_EXPERT_F, 0, 3, 3, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, SootopolisCity_House2_EventScript_ExpertF, 0

SootopolisCity_House2_MapWarps:
	warp_def 3, 6, 0, 5, MAP_SOOTOPOLIS_CITY
	warp_def 4, 6, 0, 5, MAP_SOOTOPOLIS_CITY

SootopolisCity_House2_MapEvents::
	map_events SootopolisCity_House2_ObjectEvents, SootopolisCity_House2_MapWarps, 0x0, 0x0

