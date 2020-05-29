FortreeCity_House1_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_NINJA_BOY, 0, 1, 3, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, FortreeCity_House1_EventScript_Trader, 0
	object_event 2, OBJ_EVENT_GFX_ZIGZAGOON_2, 0, 2, 3, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, FortreeCity_House1_EventScript_Zigzagoon, 0
	object_event 3, OBJ_EVENT_GFX_EXPERT_F, 0, 7, 4, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, FortreeCity_House1_EventScript_ExpertF, 0

FortreeCity_House1_MapWarps:
	warp_def 3, 5, 0, 1, MAP_FORTREE_CITY
	warp_def 4, 5, 0, 1, MAP_FORTREE_CITY

FortreeCity_House1_MapEvents::
	map_events FortreeCity_House1_ObjectEvents, FortreeCity_House1_MapWarps, 0x0, 0x0

