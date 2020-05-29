AbandonedShip_Room_B1F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_ITEM_BALL, 0, 4, 4, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, AbandonedShip_Room_B1F_EventScript_ItemTM13, FLAG_ITEM_ABANDONED_SHIP_ROOMS_B1F_TM_13

AbandonedShip_Room_B1F_MapWarps:
	warp_def 4, 7, 3, 5, MAP_ABANDONED_SHIP_CORRIDORS_B1F
	warp_def 5, 7, 3, 5, MAP_ABANDONED_SHIP_CORRIDORS_B1F

AbandonedShip_Room_B1F_MapEvents::
	map_events AbandonedShip_Room_B1F_ObjectEvents, AbandonedShip_Room_B1F_MapWarps, 0x0, 0x0

