TrainerHill_Roof_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_GENTLEMAN, 0, 12, 7, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, TrainerHill_Roof_EventScript_Owner, 0

TrainerHill_Roof_MapWarps:
	warp_def 9, 5, 3, 1, MAP_TRAINER_HILL_4F
	warp_def 15, 5, 0, 1, MAP_TRAINER_HILL_ELEVATOR

TrainerHill_Roof_MapEvents::
	map_events TrainerHill_Roof_ObjectEvents, TrainerHill_Roof_MapWarps, 0x0, 0x0

