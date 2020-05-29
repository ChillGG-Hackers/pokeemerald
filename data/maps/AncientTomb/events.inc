AncientTomb_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_REGISTEEL, 0, 8, 7, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, AncientTomb_EventScript_Registeel, FLAG_HIDE_REGISTEEL

AncientTomb_MapWarps:
	warp_def 8, 29, 3, 0, MAP_ROUTE120
	warp_def 8, 20, 0, 2, MAP_ANCIENT_TOMB
	warp_def 8, 11, 3, 1, MAP_ANCIENT_TOMB

AncientTomb_MapBGEvents:
	bg_event 8, 20, 0, BG_EVENT_PLAYER_FACING_ANY, AncientTomb_EventScript_CaveEntranceMiddle
	bg_event 7, 20, 0, BG_EVENT_PLAYER_FACING_ANY, AncientTomb_EventScript_CaveEntranceSide
	bg_event 9, 20, 0, BG_EVENT_PLAYER_FACING_ANY, AncientTomb_EventScript_CaveEntranceSide

AncientTomb_MapEvents::
	map_events AncientTomb_ObjectEvents, AncientTomb_MapWarps, 0x0, AncientTomb_MapBGEvents

