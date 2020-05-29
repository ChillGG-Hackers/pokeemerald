Route110_SeasideCyclingRoadNorthEntrance_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MART_EMPLOYEE, 0, 7, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, Route110_SeasideCyclingRoadNorthEntrance_EventScript_Clerk, 0

Route110_SeasideCyclingRoadNorthEntrance_MapWarps:
	warp_def 1, 5, 0, 4, MAP_ROUTE110
	warp_def 2, 5, 0, 4, MAP_ROUTE110
	warp_def 12, 5, 0, 5, MAP_ROUTE110
	warp_def 13, 5, 0, 5, MAP_ROUTE110

Route110_SeasideCyclingRoadNorthEntrance_MapCoordEvents:
	coord_event 7, 4, 3, VAR_TEMP_1, 0, Route110_SeasideCyclingRoadNorthEntrance_EventScript_BikeCheck
	coord_event 5, 4, 3, VAR_TEMP_1, 1, Route110_SeasideCyclingRoadNorthEntrance_EventScript_ClearCyclingRoad

Route110_SeasideCyclingRoadNorthEntrance_MapEvents::
	map_events Route110_SeasideCyclingRoadNorthEntrance_ObjectEvents, Route110_SeasideCyclingRoadNorthEntrance_MapWarps, Route110_SeasideCyclingRoadNorthEntrance_MapCoordEvents, 0x0

