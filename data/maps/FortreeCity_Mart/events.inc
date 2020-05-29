FortreeCity_Mart_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MART_EMPLOYEE, 0, 1, 3, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, FortreeCity_Mart_EventScript_Clerk, 0
	object_event 2, OBJ_EVENT_GFX_WOMAN_2, 0, 9, 3, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, FortreeCity_Mart_EventScript_Woman, 0
	object_event 3, OBJ_EVENT_GFX_GIRL_3, 0, 8, 5, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, FortreeCity_Mart_EventScript_Girl, 0
	object_event 4, OBJ_EVENT_GFX_BOY_2, 0, 5, 6, 3, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NONE, 0, FortreeCity_Mart_EventScript_Boy, 0

FortreeCity_Mart_MapWarps:
	warp_def 3, 7, 0, 3, MAP_FORTREE_CITY
	warp_def 4, 7, 0, 3, MAP_FORTREE_CITY

FortreeCity_Mart_MapEvents::
	map_events FortreeCity_Mart_ObjectEvents, FortreeCity_Mart_MapWarps, 0x0, 0x0

