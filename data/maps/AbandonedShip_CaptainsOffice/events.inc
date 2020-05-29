AbandonedShip_CaptainsOffice_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_SCIENTIST_1, 0, 3, 4, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, AbandonedShip_CaptainsOffice_EventScript_CaptSternAide, 0
	object_event 2, OBJ_EVENT_GFX_ITEM_BALL, 0, 0, 6, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, AbandonedShip_CaptainsOffice_EventScript_ItemStorageKey, FLAG_ITEM_ABANDONED_SHIP_CAPTAINS_OFFICE_STORAGE_KEY

AbandonedShip_CaptainsOffice_MapWarps:
	warp_def 7, 6, 3, 4, MAP_ABANDONED_SHIP_DECK
	warp_def 8, 6, 3, 4, MAP_ABANDONED_SHIP_DECK

AbandonedShip_CaptainsOffice_MapEvents::
	map_events AbandonedShip_CaptainsOffice_ObjectEvents, AbandonedShip_CaptainsOffice_MapWarps, 0x0, 0x0

