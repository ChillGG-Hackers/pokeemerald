FortreeCity_DecorationShop_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_POKEFAN_M, 0, 6, 5, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, FortreeCity_DecorationShop_EventScript_PokefanM, 0
	object_event 2, OBJ_EVENT_GFX_GIRL_3, 0, 0, 4, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, FortreeCity_DecorationShop_EventScript_Girl, 0
	object_event 3, OBJ_EVENT_GFX_MART_EMPLOYEE, 0, 1, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, FortreeCity_DecorationShop_EventScript_ClerkDesks, 0
	object_event 4, OBJ_EVENT_GFX_MART_EMPLOYEE, 0, 6, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, FortreeCity_DecorationShop_EventScript_ClerkChairs, 0

FortreeCity_DecorationShop_MapWarps:
	warp_def 3, 5, 0, 8, MAP_FORTREE_CITY
	warp_def 4, 5, 0, 8, MAP_FORTREE_CITY

FortreeCity_DecorationShop_MapEvents::
	map_events FortreeCity_DecorationShop_ObjectEvents, FortreeCity_DecorationShop_MapWarps, 0x0, 0x0

