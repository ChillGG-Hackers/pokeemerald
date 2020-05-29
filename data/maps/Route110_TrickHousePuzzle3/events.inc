Route110_TrickHousePuzzle3_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_CAMPER, 0, 7, 19, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NORMAL, 2, Route110_TrickHousePuzzle3_EventScript_Justin, 0
	object_event 2, OBJ_EVENT_GFX_PICNICKER, 0, 4, 4, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NORMAL, 1, Route110_TrickHousePuzzle3_EventScript_Martha, 0
	object_event 3, OBJ_EVENT_GFX_HIKER, 0, 10, 10, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NORMAL, 1, Route110_TrickHousePuzzle3_EventScript_Alan, 0
	object_event 4, OBJ_EVENT_GFX_ITEM_BALL, 0, 1, 2, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, Route110_TrickHousePuzzle3_EventScript_ItemWoodMail, FLAG_ITEM_TRICK_HOUSE_PUZZLE_3_WOOD_MAIL
	object_event 5, OBJ_EVENT_GFX_ITEM_BALL, 0, 4, 2, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, Route110_TrickHousePuzzle3_EventScript_ItemShadowMail, FLAG_ITEM_TRICK_HOUSE_PUZZLE_3_SHADOW_MAIL
	object_event 6, OBJ_EVENT_GFX_BREAKABLE_ROCK, 0, 1, 20, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, EventScript_RockSmash, FLAG_TEMP_15
	object_event 7, OBJ_EVENT_GFX_BREAKABLE_ROCK, 0, 2, 21, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, EventScript_RockSmash, FLAG_TEMP_16

Route110_TrickHousePuzzle3_MapWarps:
	warp_def 0, 21, 3, 2, MAP_ROUTE110_TRICK_HOUSE_ENTRANCE
	warp_def 1, 21, 3, 2, MAP_ROUTE110_TRICK_HOUSE_ENTRANCE
	warp_def 13, 1, 3, 0, MAP_ROUTE110_TRICK_HOUSE_END

Route110_TrickHousePuzzle3_MapCoordEvents:
	coord_event 4, 14, 3, VAR_TEMP_1, 0, Route110_TrickHousePuzzle3_EventScript_Button1
	coord_event 3, 11, 3, VAR_TEMP_2, 0, Route110_TrickHousePuzzle3_EventScript_Button2
	coord_event 12, 5, 3, VAR_TEMP_3, 0, Route110_TrickHousePuzzle3_EventScript_Button3
	coord_event 8, 2, 3, VAR_TEMP_4, 0, Route110_TrickHousePuzzle3_EventScript_Button4

Route110_TrickHousePuzzle3_MapBGEvents:
	bg_event 0, 14, 0, BG_EVENT_PLAYER_FACING_ANY, Route110_TrickHousePuzzle3_EventScript_Scroll

Route110_TrickHousePuzzle3_MapEvents::
	map_events Route110_TrickHousePuzzle3_ObjectEvents, Route110_TrickHousePuzzle3_MapWarps, Route110_TrickHousePuzzle3_MapCoordEvents, Route110_TrickHousePuzzle3_MapBGEvents

