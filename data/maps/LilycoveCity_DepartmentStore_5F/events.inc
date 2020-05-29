LilycoveCity_DepartmentStore_5F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_LITTLE_GIRL, 0, 1, 6, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, LilycoveCity_DepartmentStore_5F_EventScript_LittleGirl, 0
	object_event 2, OBJ_EVENT_GFX_POKEFAN_F, 0, 7, 7, 3, MOVEMENT_TYPE_FACE_DOWN_AND_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, LilycoveCity_DepartmentStore_5F_EventScript_PokefanF, 0
	object_event 3, OBJ_EVENT_GFX_WOMAN_3, 0, 7, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_DepartmentStore_5F_EventScript_ClerkFarLeft, 0
	object_event 4, OBJ_EVENT_GFX_WOMAN_3, 0, 9, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_DepartmentStore_5F_EventScript_ClerkMidLeft, 0
	object_event 5, OBJ_EVENT_GFX_WOMAN_3, 0, 15, 6, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_DepartmentStore_5F_EventScript_ClerkMidRight, 0
	object_event 6, OBJ_EVENT_GFX_WOMAN_3, 0, 17, 6, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_DepartmentStore_5F_EventScript_ClerkFarRight, 0
	object_event 7, OBJ_EVENT_GFX_WOMAN_2, 0, 9, 5, 3, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NONE, 0, LilycoveCity_DepartmentStore_5F_EventScript_Woman, 0

LilycoveCity_DepartmentStore_5F_MapWarps:
	warp_def 13, 1, 0, 1, MAP_LILYCOVE_CITY_DEPARTMENT_STORE_4F
	warp_def 2, 1, 0, 0, MAP_LILYCOVE_CITY_DEPARTMENT_STORE_ELEVATOR
	warp_def 16, 1, 0, 0, MAP_LILYCOVE_CITY_DEPARTMENT_STORE_ROOFTOP

LilycoveCity_DepartmentStore_5F_MapEvents::
	map_events LilycoveCity_DepartmentStore_5F_ObjectEvents, LilycoveCity_DepartmentStore_5F_MapWarps, 0x0, 0x0

