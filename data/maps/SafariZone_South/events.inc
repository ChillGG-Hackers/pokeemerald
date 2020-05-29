SafariZone_South_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_CAMPER, 0, 32, 34, 4, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, SafariZone_South_EventScript_ExitAttendant, 0
	object_event 2, OBJ_EVENT_GFX_BOY_1, 0, 26, 28, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, SafariZone_South_EventScript_Boy, 0
	object_event 3, OBJ_EVENT_GFX_MAN_4, 0, 16, 6, 5, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, SafariZone_South_EventScript_Man, 0
	object_event 4, OBJ_EVENT_GFX_YOUNGSTER, 0, 15, 31, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, SafariZone_South_EventScript_Youngster, 0
	object_event 5, OBJ_EVENT_GFX_CAMPER, 0, 36, 16, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, SafariZone_South_EventScript_ConstructionWorker1, FLAG_HIDE_SAFARI_ZONE_SOUTH_CONSTRUCTION_WORKERS
	object_event 6, OBJ_EVENT_GFX_CAMPER, 0, 36, 17, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, SafariZone_South_EventScript_ConstructionWorker2, FLAG_HIDE_SAFARI_ZONE_SOUTH_CONSTRUCTION_WORKERS

SafariZone_South_MapWarps:
	warp_def 32, 33, 0, 0, MAP_ROUTE121_SAFARI_ZONE_ENTRANCE

SafariZone_South_MapEvents::
	map_events SafariZone_South_ObjectEvents, SafariZone_South_MapWarps, 0x0, 0x0

