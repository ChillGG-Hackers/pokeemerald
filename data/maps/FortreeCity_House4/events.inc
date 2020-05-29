FortreeCity_House4_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_WOMAN_4, 0, 6, 4, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, FortreeCity_House4_EventScript_Woman, 0
	object_event 2, OBJ_EVENT_GFX_BOY_3, 0, 1, 3, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, FortreeCity_House4_EventScript_Boy, 0
	object_event 3, OBJ_EVENT_GFX_WINGULL, 0, 2, 3, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, FortreeCity_House4_EventScript_Wingull, FLAG_HIDE_FORTREE_CITY_HOUSE_4_WINGULL

FortreeCity_House4_MapWarps:
	warp_def 3, 5, 0, 6, MAP_FORTREE_CITY
	warp_def 4, 5, 0, 6, MAP_FORTREE_CITY

FortreeCity_House4_MapEvents::
	map_events FortreeCity_House4_ObjectEvents, FortreeCity_House4_MapWarps, 0x0, 0x0

