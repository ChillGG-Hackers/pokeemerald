MossdeepCity_House4_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_WOMAN_2, 0, 3, 4, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, MossdeepCity_House4_EventScript_Woman, 0
	object_event 2, OBJ_EVENT_GFX_NINJA_BOY, 0, 6, 6, 3, MOVEMENT_TYPE_WANDER_LEFT_AND_RIGHT, 1, 0, TRAINER_TYPE_NONE, 0, MossdeepCity_House4_EventScript_NinjaBoy, 0
	object_event 3, OBJ_EVENT_GFX_SKITTY, 0, 2, 4, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, MossdeepCity_House4_EventScript_Skitty, 0

MossdeepCity_House4_MapWarps:
	warp_def 4, 7, 0, 7, MAP_MOSSDEEP_CITY
	warp_def 3, 7, 0, 7, MAP_MOSSDEEP_CITY

MossdeepCity_House4_MapEvents::
	map_events MossdeepCity_House4_ObjectEvents, MossdeepCity_House4_MapWarps, 0x0, 0x0

