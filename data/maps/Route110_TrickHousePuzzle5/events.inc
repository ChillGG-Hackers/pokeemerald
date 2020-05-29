Route110_TrickHousePuzzle5_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MAN_1, 0, 6, 17, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll1, 0
	object_event 2, OBJ_EVENT_GFX_MAN_1, 0, 0, 7, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll2, 0
	object_event 3, OBJ_EVENT_GFX_MAN_1, 0, 14, 10, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll3, 0
	object_event 4, OBJ_EVENT_GFX_MAN_1, 0, 14, 19, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll4, 0
	object_event 5, OBJ_EVENT_GFX_MAN_1, 0, 10, 4, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll5, 0

Route110_TrickHousePuzzle5_MapWarps:
	warp_def 0, 21, 3, 2, MAP_ROUTE110_TRICK_HOUSE_ENTRANCE
	warp_def 1, 21, 3, 2, MAP_ROUTE110_TRICK_HOUSE_ENTRANCE
	warp_def 13, 1, 3, 0, MAP_ROUTE110_TRICK_HOUSE_END

Route110_TrickHousePuzzle5_MapCoordEvents:
	coord_event 5, 17, 3, VAR_TEMP_1, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll1Trigger0
	coord_event 4, 17, 3, VAR_TEMP_1, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll1Trigger1
	coord_event 3, 17, 3, VAR_TEMP_1, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll1Trigger2
	coord_event 2, 17, 3, VAR_TEMP_1, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll1Trigger3
	coord_event 1, 7, 3, VAR_TEMP_2, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll2Trigger0
	coord_event 2, 7, 3, VAR_TEMP_2, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll2Trigger1
	coord_event 13, 10, 3, VAR_TEMP_3, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll3Trigger0
	coord_event 12, 10, 3, VAR_TEMP_3, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll3Trigger1
	coord_event 11, 10, 3, VAR_TEMP_3, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll3Trigger2
	coord_event 13, 19, 3, VAR_TEMP_4, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll4Trigger0
	coord_event 12, 19, 3, VAR_TEMP_4, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll4Trigger1
	coord_event 11, 4, 3, VAR_TEMP_5, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll5Trigger0
	coord_event 1, 17, 3, VAR_TEMP_1, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll1Trigger4
	coord_event 3, 7, 3, VAR_TEMP_2, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll2Trigger2
	coord_event 4, 7, 3, VAR_TEMP_2, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll2Trigger3
	coord_event 5, 7, 3, VAR_TEMP_2, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll2Trigger4
	coord_event 6, 7, 3, VAR_TEMP_2, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll2Trigger5
	coord_event 10, 10, 3, VAR_TEMP_3, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll3Trigger3
	coord_event 9, 10, 3, VAR_TEMP_3, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll3Trigger4
	coord_event 11, 19, 3, VAR_TEMP_4, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll4Trigger2
	coord_event 10, 19, 3, VAR_TEMP_4, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll4Trigger3
	coord_event 9, 19, 3, VAR_TEMP_4, 0, Route110_TrickHousePuzzle5_EventScript_Mechadoll4Trigger4

Route110_TrickHousePuzzle5_MapBGEvents:
	bg_event 11, 21, 0, BG_EVENT_PLAYER_FACING_ANY, Route110_TrickHousePuzzle5_EventScript_Scroll

Route110_TrickHousePuzzle5_MapEvents::
	map_events Route110_TrickHousePuzzle5_ObjectEvents, Route110_TrickHousePuzzle5_MapWarps, Route110_TrickHousePuzzle5_MapCoordEvents, Route110_TrickHousePuzzle5_MapBGEvents

