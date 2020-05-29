SafariZone_Southwest_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_WOMAN_2, 0, 22, 9, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, SafariZone_Southwest_EventScript_Woman, 0
	object_event 2, OBJ_EVENT_GFX_ITEM_BALL, 0, 0, 37, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, SafariZone_Southwest_EventScript_ItemMaxRevive, FLAG_ITEM_SAFARI_ZONE_SOUTH_WEST_MAX_REVIVE

SafariZone_Southwest_MapWarps:
	warp_def 29, 7, 3, 0, MAP_SAFARI_ZONE_REST_HOUSE

SafariZone_Southwest_MapBGEvents:
	bg_event 32, 7, 3, BG_EVENT_PLAYER_FACING_ANY, SafariZone_Southwest_EventScript_RestHouseSign

SafariZone_Southwest_MapEvents::
	map_events SafariZone_Southwest_ObjectEvents, SafariZone_Southwest_MapWarps, 0x0, SafariZone_Southwest_MapBGEvents

