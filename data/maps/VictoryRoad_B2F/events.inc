VictoryRoad_B2F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MAN_3, 0, 15, 6, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NORMAL, 2, VictoryRoad_B2F_EventScript_Vito, 0
	object_event 2, OBJ_EVENT_GFX_MAN_3, 0, 43, 14, 3, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NORMAL, 4, VictoryRoad_B2F_EventScript_Owen, 0
	object_event 3, OBJ_EVENT_GFX_WOMAN_5, 0, 2, 17, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NORMAL, 2, VictoryRoad_B2F_EventScript_Caroline, 0
	object_event 4, OBJ_EVENT_GFX_WOMAN_5, 0, 35, 22, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NORMAL, 2, VictoryRoad_B2F_EventScript_Julie, 0
	object_event 5, OBJ_EVENT_GFX_ITEM_BALL, 0, 13, 8, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, VictoryRoad_B2F_EventScript_ItemFullHeal, FLAG_ITEM_VICTORY_ROAD_B2F_FULL_HEAL
	object_event 6, OBJ_EVENT_GFX_WOMAN_5, 0, 25, 18, 4, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NORMAL, 2, VictoryRoad_B2F_EventScript_Dianne, 0
	object_event 7, OBJ_EVENT_GFX_MAN_3, 0, 25, 21, 4, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NORMAL, 2, VictoryRoad_B2F_EventScript_Felix, 0

VictoryRoad_B2F_MapWarps:
	warp_def 30, 25, 3, 0, MAP_VICTORY_ROAD_B1F
	warp_def 43, 2, 3, 3, MAP_VICTORY_ROAD_B1F
	warp_def 19, 12, 3, 1, MAP_VICTORY_ROAD_B1F
	warp_def 5, 26, 3, 6, MAP_VICTORY_ROAD_B1F

VictoryRoad_B2F_MapBGEvents:
	bg_hidden_item_event 28, 5, 3, ITEM_ELIXIR, FLAG_HIDDEN_ITEM_VICTORY_ROAD_B2F_ELIXIR
	bg_hidden_item_event 37, 1, 3, ITEM_MAX_REPEL, FLAG_HIDDEN_ITEM_VICTORY_ROAD_B2F_MAX_REPEL

VictoryRoad_B2F_MapEvents::
	map_events VictoryRoad_B2F_ObjectEvents, VictoryRoad_B2F_MapWarps, 0x0, VictoryRoad_B2F_MapBGEvents

