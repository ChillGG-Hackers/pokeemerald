TrainerHill_Entrance_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_TEALA, 0, 11, 6, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, TrainerHill_Entrance_EventScript_Attendant, 0
	object_event 2, OBJ_EVENT_GFX_NURSE, 0, 4, 9, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, TrainerHill_Entrance_EventScript_Nurse, 0
	object_event 3, OBJ_EVENT_GFX_MART_EMPLOYEE, 0, 14, 9, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, TrainerHill_Entrance_EventScript_Clerk, 0
	object_event 4, OBJ_EVENT_GFX_GIRL_3, 0, 5, 14, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, TrainerHill_Entrance_EventScript_Girl, 0
	object_event 5, OBJ_EVENT_GFX_MAN_3, 0, 14, 15, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, TrainerHill_Entrance_EventScript_Man, 0

TrainerHill_Entrance_MapWarps:
	warp_def 9, 16, 3, 4, MAP_ROUTE111
	warp_def 10, 16, 3, 4, MAP_ROUTE111
	warp_def 9, 1, 3, 0, MAP_TRAINER_HILL_1F

TrainerHill_Entrance_MapCoordEvents:
	coord_event 9, 6, 3, VAR_TRAINER_HILL_IS_ACTIVE, 0, TrainerHill_Entrance_EventScript_EntryTrigger

TrainerHill_Entrance_MapBGEvents:
	bg_event 8, 10, 0, BG_EVENT_PLAYER_FACING_NORTH, TrainerHill_Entrance_EventScript_Records

TrainerHill_Entrance_MapEvents::
	map_events TrainerHill_Entrance_ObjectEvents, TrainerHill_Entrance_MapWarps, TrainerHill_Entrance_MapCoordEvents, TrainerHill_Entrance_MapBGEvents

