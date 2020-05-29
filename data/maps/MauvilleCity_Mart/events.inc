MauvilleCity_Mart_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MART_EMPLOYEE, 0, 1, 3, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, MauvilleCity_Mart_EventScript_Clerk, 0
	object_event 2, OBJ_EVENT_GFX_EXPERT_M, 0, 5, 4, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, MauvilleCity_Mart_EventScript_ExpertM, 0
	object_event 3, OBJ_EVENT_GFX_MAN_3, 0, 5, 5, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, MauvilleCity_Mart_EventScript_Man, 0

MauvilleCity_Mart_MapWarps:
	warp_def 3, 7, 0, 3, MAP_MAUVILLE_CITY
	warp_def 4, 7, 0, 3, MAP_MAUVILLE_CITY

MauvilleCity_Mart_MapEvents::
	map_events MauvilleCity_Mart_ObjectEvents, MauvilleCity_Mart_MapWarps, 0x0, 0x0

