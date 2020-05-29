LilycoveCity_DepartmentStore_1F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_BEAUTY, 0, 8, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_DepartmentStore_1F_EventScript_Greeter, 0
	object_event 2, OBJ_EVENT_GFX_BEAUTY, 0, 10, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_DepartmentStore_1F_EventScript_LotteryClerk, 0
	object_event 3, OBJ_EVENT_GFX_POKEFAN_F, 0, 14, 5, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, LilycoveCity_DepartmentStore_1F_EventScript_PokefanF, 0
	object_event 4, OBJ_EVENT_GFX_LITTLE_GIRL, 0, 4, 4, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, LilycoveCity_DepartmentStore_1F_EventScript_LittleGirl, 0
	object_event 5, OBJ_EVENT_GFX_POKEFAN_M, 0, 3, 6, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, LilycoveCity_DepartmentStore_1F_EventScript_PokefanM, 0
	object_event 6, OBJ_EVENT_GFX_AZUMARILL, 0, 2, 6, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, LilycoveCity_DepartmentStore_1F_EventScript_Azumarill, 0

LilycoveCity_DepartmentStore_1F_MapWarps:
	warp_def 8, 7, 0, 0, MAP_LILYCOVE_CITY
	warp_def 9, 7, 0, 0, MAP_LILYCOVE_CITY
	warp_def 16, 1, 0, 0, MAP_LILYCOVE_CITY_DEPARTMENT_STORE_2F
	warp_def 2, 1, 0, 0, MAP_LILYCOVE_CITY_DEPARTMENT_STORE_ELEVATOR

LilycoveCity_DepartmentStore_1F_MapBGEvents:
	bg_event 0, 8, 0, BG_EVENT_PLAYER_FACING_NORTH, LilycoveCity_DepartmentStore_1F_EventScript_FloorNamesSign

LilycoveCity_DepartmentStore_1F_MapEvents::
	map_events LilycoveCity_DepartmentStore_1F_ObjectEvents, LilycoveCity_DepartmentStore_1F_MapWarps, 0x0, LilycoveCity_DepartmentStore_1F_MapBGEvents

