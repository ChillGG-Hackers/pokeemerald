Route110_TrickHouseEntrance_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MAN_1, 0, 6, 2, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, Route110_TrickHouseEntrance_EventScript_TrickMaster, FLAG_HIDE_TRICK_HOUSE_ENTRANCE_MAN

Route110_TrickHouseEntrance_MapWarps:
	warp_def 5, 7, 3, 1, MAP_ROUTE110
	warp_def 6, 7, 3, 1, MAP_ROUTE110
	warp_def 5, 2, 3, 0, MAP_ROUTE110_TRICK_HOUSE_PUZZLE1

Route110_TrickHouseEntrance_MapCoordEvents:
	coord_event 4, 7, 3, VAR_TRICK_HOUSE_BEING_WATCHED_STATE, 0, Route110_TrickHouseEntrance_EventScript_TrickMasterHiding
	coord_event 5, 6, 3, VAR_TRICK_HOUSE_BEING_WATCHED_STATE, 0, Route110_TrickHouseEntrance_EventScript_TrickMasterHiding
	coord_event 6, 6, 3, VAR_TRICK_HOUSE_BEING_WATCHED_STATE, 0, Route110_TrickHouseEntrance_EventScript_TrickMasterHiding
	coord_event 7, 7, 3, VAR_TRICK_HOUSE_BEING_WATCHED_STATE, 0, Route110_TrickHouseEntrance_EventScript_TrickMasterHiding

Route110_TrickHouseEntrance_MapBGEvents:
	bg_event 5, 1, 0, BG_EVENT_PLAYER_FACING_NORTH, Route110_TrickHouseEntrance_EventScript_Door

Route110_TrickHouseEntrance_MapEvents::
	map_events Route110_TrickHouseEntrance_ObjectEvents, Route110_TrickHouseEntrance_MapWarps, Route110_TrickHouseEntrance_MapCoordEvents, Route110_TrickHouseEntrance_MapBGEvents

