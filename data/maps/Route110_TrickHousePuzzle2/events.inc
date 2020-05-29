Route110_TrickHousePuzzle2_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_SCHOOL_KID_M, 0, 13, 10, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NORMAL, 1, Route110_TrickHousePuzzle2_EventScript_Ted, 0
	object_event 2, OBJ_EVENT_GFX_SCHOOL_KID_M, 0, 10, 17, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NORMAL, 4, Route110_TrickHousePuzzle2_EventScript_Paul, 0
	object_event 3, OBJ_EVENT_GFX_GIRL_3, 0, 11, 9, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NORMAL, 2, Route110_TrickHousePuzzle2_EventScript_Georgia, 0
	object_event 4, OBJ_EVENT_GFX_ITEM_BALL, 0, 8, 17, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, Route110_TrickHousePuzzle2_EventScript_ItemWaveMail, FLAG_ITEM_TRICK_HOUSE_PUZZLE_2_WAVE_MAIL
	object_event 5, OBJ_EVENT_GFX_ITEM_BALL, 0, 3, 13, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, Route110_TrickHousePuzzle2_EventScript_ItemHarborMail, FLAG_ITEM_TRICK_HOUSE_PUZZLE_2_HARBOR_MAIL

Route110_TrickHousePuzzle2_MapWarps:
	warp_def 0, 21, 3, 2, MAP_ROUTE110_TRICK_HOUSE_ENTRANCE
	warp_def 1, 21, 3, 2, MAP_ROUTE110_TRICK_HOUSE_ENTRANCE
	warp_def 13, 1, 3, 0, MAP_ROUTE110_TRICK_HOUSE_END

Route110_TrickHousePuzzle2_MapCoordEvents:
	coord_event 11, 12, 3, VAR_TEMP_1, 0, Route110_TrickHousePuzzle2_EventScript_Button1
	coord_event 0, 4, 0, VAR_TEMP_2, 0, Route110_TrickHousePuzzle2_EventScript_Button2
	coord_event 14, 5, 3, VAR_TEMP_3, 0, Route110_TrickHousePuzzle2_EventScript_Button3
	coord_event 7, 11, 3, VAR_TEMP_4, 0, Route110_TrickHousePuzzle2_EventScript_Button4

Route110_TrickHousePuzzle2_MapBGEvents:
	bg_event 14, 14, 0, BG_EVENT_PLAYER_FACING_ANY, Route110_TrickHousePuzzle2_EventScript_Scroll

Route110_TrickHousePuzzle2_MapEvents::
	map_events Route110_TrickHousePuzzle2_ObjectEvents, Route110_TrickHousePuzzle2_MapWarps, Route110_TrickHousePuzzle2_MapCoordEvents, Route110_TrickHousePuzzle2_MapBGEvents

