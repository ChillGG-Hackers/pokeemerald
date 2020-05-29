AbandonedShip_Rooms2_1F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MAN_4, 0, 7, 13, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NORMAL, 1, AbandonedShip_Rooms2_1F_EventScript_Dan, 0
	object_event 2, OBJ_EVENT_GFX_WOMAN_4, 0, 6, 13, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NORMAL, 1, AbandonedShip_Rooms2_1F_EventScript_Kira, 0
	object_event 3, OBJ_EVENT_GFX_ITEM_BALL, 0, 4, 4, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, AbandonedShip_Rooms2_1F_EventScript_ItemRevive, FLAG_ITEM_ABANDONED_SHIP_ROOMS_2_1F_REVIVE
	object_event 4, OBJ_EVENT_GFX_HIKER, 0, 3, 2, 3, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NORMAL, 3, AbandonedShip_Rooms2_1F_EventScript_Garrison, 0
	object_event 5, OBJ_EVENT_GFX_TUBER_F, 0, 7, 2, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NORMAL, 3, AbandonedShip_Rooms2_1F_EventScript_Jani, 0

AbandonedShip_Rooms2_1F_MapWarps:
	warp_def 4, 16, 3, 8, MAP_ABANDONED_SHIP_CORRIDORS_1F
	warp_def 5, 16, 3, 8, MAP_ABANDONED_SHIP_CORRIDORS_1F
	warp_def 4, 1, 3, 11, MAP_ABANDONED_SHIP_CORRIDORS_1F

AbandonedShip_Rooms2_1F_MapEvents::
	map_events AbandonedShip_Rooms2_1F_ObjectEvents, AbandonedShip_Rooms2_1F_MapWarps, 0x0, 0x0

