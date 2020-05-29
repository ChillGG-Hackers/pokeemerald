PetalburgCity_Mart_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MART_EMPLOYEE, 0, 1, 3, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, PetalburgCity_Mart_EventScript_Clerk, 0
	object_event 2, OBJ_EVENT_GFX_MAN_1, 0, 9, 4, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, PetalburgCity_Mart_EventScript_Man, 0
	object_event 3, OBJ_EVENT_GFX_BOY_1, 0, 6, 3, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, PetalburgCity_Mart_EventScript_Boy, 0
	object_event 4, OBJ_EVENT_GFX_WOMAN_2, 0, 5, 5, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, PetalburgCity_Mart_EventScript_Woman, 0

PetalburgCity_Mart_MapWarps:
	warp_def 3, 7, 0, 5, MAP_PETALBURG_CITY
	warp_def 4, 7, 0, 5, MAP_PETALBURG_CITY

PetalburgCity_Mart_MapEvents::
	map_events PetalburgCity_Mart_ObjectEvents, PetalburgCity_Mart_MapWarps, 0x0, 0x0

