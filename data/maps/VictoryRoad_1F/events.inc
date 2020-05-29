VictoryRoad_1F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MAN_3, 0, 33, 22, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NORMAL, 3, VictoryRoad_1F_EventScript_Edgar, 0
	object_event 2, OBJ_EVENT_GFX_WOMAN_5, 0, 6, 15, 4, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NORMAL, 4, VictoryRoad_1F_EventScript_Hope, 0
	object_event 3, OBJ_EVENT_GFX_MAN_3, 0, 27, 34, 3, MOVEMENT_TYPE_FACE_DOWN_AND_RIGHT, 0, 0, TRAINER_TYPE_NORMAL, 3, VictoryRoad_1F_EventScript_Albert, 0
	object_event 4, OBJ_EVENT_GFX_WALLY, 0, 12, 25, 4, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, VictoryRoad_1F_EventScript_EntranceWally, FLAG_HIDE_VICTORY_ROAD_ENTRANCE_WALLY
	object_event 5, OBJ_EVENT_GFX_ITEM_BALL, 0, 40, 26, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, VictoryRoad_1F_EventScript_ItemMaxElixir, FLAG_ITEM_VICTORY_ROAD_1F_MAX_ELIXIR
	object_event 6, OBJ_EVENT_GFX_ITEM_BALL, 0, 37, 39, 4, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, VictoryRoad_1F_EventScript_ItemPPUp, FLAG_ITEM_VICTORY_ROAD_1F_PP_UP
	object_event 7, OBJ_EVENT_GFX_WALLY, 0, 31, 9, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, VictoryRoad_1F_EventScript_ExitWally, FLAG_HIDE_VICTORY_ROAD_EXIT_WALLY
	object_event 8, OBJ_EVENT_GFX_WOMAN_5, 0, 29, 17, 3, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NORMAL, 2, VictoryRoad_1F_EventScript_Katelynn, 0
	object_event 9, OBJ_EVENT_GFX_MAN_3, 0, 32, 17, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NORMAL, 2, VictoryRoad_1F_EventScript_Quincy, 0

VictoryRoad_1F_MapWarps:
	warp_def 15, 40, 3, 2, MAP_EVER_GRANDE_CITY
	warp_def 39, 5, 3, 3, MAP_EVER_GRANDE_CITY
	warp_def 21, 32, 3, 5, MAP_VICTORY_ROAD_B1F
	warp_def 42, 38, 4, 2, MAP_VICTORY_ROAD_B1F
	warp_def 9, 14, 4, 4, MAP_VICTORY_ROAD_B1F

VictoryRoad_1F_MapCoordEvents:
	coord_event 2, 23, 4, VAR_VICTORY_ROAD_1F_STATE, 0, VictoryRoad_1F_EventScript_WallyBattleTrigger1
	coord_event 3, 23, 4, VAR_VICTORY_ROAD_1F_STATE, 0, VictoryRoad_1F_EventScript_WallyBattleTrigger2

VictoryRoad_1F_MapBGEvents:
	bg_hidden_item_event 30, 39, 4, ITEM_ULTRA_BALL, FLAG_HIDDEN_ITEM_VICTORY_ROAD_1F_ULTRA_BALL

VictoryRoad_1F_MapEvents::
	map_events VictoryRoad_1F_ObjectEvents, VictoryRoad_1F_MapWarps, VictoryRoad_1F_MapCoordEvents, VictoryRoad_1F_MapBGEvents

