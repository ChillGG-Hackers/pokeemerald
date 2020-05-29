SSTidalLowerDeck_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_SAILOR, 0, 10, 4, 3, MOVEMENT_TYPE_WALK_SEQUENCE_DOWN_RIGHT_UP_LEFT, 4, 4, TRAINER_TYPE_NORMAL, 3, SSTidalLowerDeck_EventScript_Phillip, 0
	object_event 2, OBJ_EVENT_GFX_SAILOR, 0, 7, 4, 3, MOVEMENT_TYPE_WALK_SEQUENCE_DOWN_LEFT_UP_RIGHT, 7, 4, TRAINER_TYPE_NORMAL, 3, SSTidalLowerDeck_EventScript_Leonard, 0

SSTidalLowerDeck_MapWarps:
	warp_def 15, 2, 3, 8, MAP_SS_TIDAL_CORRIDOR

SSTidalLowerDeck_MapBGEvents:
	bg_hidden_item_event 0, 2, 0, ITEM_LEFTOVERS, FLAG_HIDDEN_ITEM_SS_TIDAL_LOWER_DECK_LEFTOVERS

SSTidalLowerDeck_MapEvents::
	map_events SSTidalLowerDeck_ObjectEvents, SSTidalLowerDeck_MapWarps, 0x0, SSTidalLowerDeck_MapBGEvents

