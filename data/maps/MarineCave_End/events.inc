MarineCave_End_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_KYOGRE_1, 0, 9, 22, 1, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, 0x0, FLAG_HIDE_MARINE_CAVE_KYOGRE

MarineCave_End_MapWarps:
	warp_def 20, 4, 0, 0, MAP_MARINE_CAVE_ENTRANCE

MarineCave_End_MapCoordEvents:
	coord_event 9, 26, 3, VAR_TEMP_1, 1, MarineCave_End_EventScript_Kyogre

MarineCave_End_MapEvents::
	map_events MarineCave_End_ObjectEvents, MarineCave_End_MapWarps, MarineCave_End_MapCoordEvents, 0x0

