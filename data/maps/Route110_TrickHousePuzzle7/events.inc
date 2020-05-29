Route110_TrickHousePuzzle7_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_PSYCHIC_M, 0, 9, 20, 0, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NORMAL, 1, Route110_TrickHousePuzzle7_EventScript_Joshua, 0
	object_event 2, OBJ_EVENT_GFX_LASS, 0, 10, 2, 0, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NORMAL, 1, Route110_TrickHousePuzzle7_EventScript_Alexis, 0
	object_event 3, OBJ_EVENT_GFX_HEX_MANIAC, 0, 8, 17, 0, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NORMAL, 1, Route110_TrickHousePuzzle7_EventScript_Patricia, 0
	object_event 4, OBJ_EVENT_GFX_ITEM_BALL, 0, 5, 12, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, Route110_TrickHousePuzzle7_EventScript_ItemTropicMail, FLAG_ITEM_TRICK_HOUSE_PUZZLE_7_TROPIC_MAIL
	object_event 5, OBJ_EVENT_GFX_PSYCHIC_M, 0, 9, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NORMAL, 1, Route110_TrickHousePuzzle7_EventScript_Alvaro, 0
	object_event 6, OBJ_EVENT_GFX_LASS, 0, 8, 13, 3, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NORMAL, 1, Route110_TrickHousePuzzle7_EventScript_Mariela, 0
	object_event 7, OBJ_EVENT_GFX_GENTLEMAN, 0, 9, 12, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NORMAL, 1, Route110_TrickHousePuzzle7_EventScript_Everett, 0
	object_event 8, OBJ_EVENT_GFX_TRICK_HOUSE_STATUE, 0, 4, 17, 0, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, 0x0, 0
	object_event 9, OBJ_EVENT_GFX_TRICK_HOUSE_STATUE, 0, 4, 6, 0, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, 0x0, 0

Route110_TrickHousePuzzle7_MapWarps:
	warp_def 0, 21, 3, 2, MAP_ROUTE110_TRICK_HOUSE_ENTRANCE
	warp_def 1, 21, 3, 2, MAP_ROUTE110_TRICK_HOUSE_ENTRANCE
	warp_def 13, 1, 3, 0, MAP_ROUTE110_TRICK_HOUSE_END
	warp_def 13, 4, 0, 4, MAP_ROUTE110_TRICK_HOUSE_PUZZLE7
	warp_def 7, 3, 0, 3, MAP_ROUTE110_TRICK_HOUSE_PUZZLE7
	warp_def 13, 11, 0, 6, MAP_ROUTE110_TRICK_HOUSE_PUZZLE7
	warp_def 4, 3, 0, 5, MAP_ROUTE110_TRICK_HOUSE_PUZZLE7
	warp_def 1, 17, 0, 8, MAP_ROUTE110_TRICK_HOUSE_PUZZLE7
	warp_def 0, 11, 0, 7, MAP_ROUTE110_TRICK_HOUSE_PUZZLE7
	warp_def 2, 3, 0, 10, MAP_ROUTE110_TRICK_HOUSE_PUZZLE7
	warp_def 4, 13, 0, 9, MAP_ROUTE110_TRICK_HOUSE_PUZZLE7
	warp_def 1, 3, 0, 12, MAP_ROUTE110_TRICK_HOUSE_PUZZLE7
	warp_def 8, 12, 0, 11, MAP_ROUTE110_TRICK_HOUSE_PUZZLE7

Route110_TrickHousePuzzle7_MapCoordEvents:
	coord_event 8, 19, 0, VAR_TEMP_1, 0, Route110_TrickHousePuzzle7_EventScript_YellowButton
	coord_event 0, 14, 0, VAR_TEMP_1, 0, Route110_TrickHousePuzzle7_EventScript_BlueButton
	coord_event 6, 6, 0, VAR_TEMP_1, 0, Route110_TrickHousePuzzle7_EventScript_GreenButton
	coord_event 9, 7, 0, VAR_TEMP_1, 0, Route110_TrickHousePuzzle7_EventScript_PurpleButton

Route110_TrickHousePuzzle7_MapBGEvents:
	bg_event 6, 17, 0, BG_EVENT_PLAYER_FACING_ANY, Route110_TrickHousePuzzle7_EventScript_Scroll

Route110_TrickHousePuzzle7_MapEvents::
	map_events Route110_TrickHousePuzzle7_ObjectEvents, Route110_TrickHousePuzzle7_MapWarps, Route110_TrickHousePuzzle7_MapCoordEvents, Route110_TrickHousePuzzle7_MapBGEvents

