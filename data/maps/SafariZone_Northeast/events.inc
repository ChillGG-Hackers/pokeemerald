SafariZone_Northeast_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_BOY_3, 0, 8, 20, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, SafariZone_Northeast_EventScript_Boy, 0
	object_event 2, OBJ_EVENT_GFX_GIRL_3, 0, 30, 22, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, SafariZone_Northeast_EventScript_Girl, 0
	object_event 3, OBJ_EVENT_GFX_BREAKABLE_ROCK, 0, 11, 11, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, EventScript_RockSmash, FLAG_TEMP_15
	object_event 4, OBJ_EVENT_GFX_WOMAN_1, 0, 13, 35, 0, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, SafariZone_Northeast_EventScript_Woman, 0
	object_event 5, OBJ_EVENT_GFX_BREAKABLE_ROCK, 0, 8, 13, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, EventScript_RockSmash, FLAG_TEMP_13
	object_event 6, OBJ_EVENT_GFX_BREAKABLE_ROCK, 0, 9, 7, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, EventScript_RockSmash, FLAG_TEMP_11
	object_event 7, OBJ_EVENT_GFX_BREAKABLE_ROCK, 0, 8, 10, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, EventScript_RockSmash, FLAG_TEMP_14
	object_event 8, OBJ_EVENT_GFX_BREAKABLE_ROCK, 0, 12, 8, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, EventScript_RockSmash, FLAG_TEMP_12
	object_event 9, OBJ_EVENT_GFX_ITEM_BALL, 0, 8, 17, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, SafariZone_Northeast_EventScript_ItemNugget, FLAG_ITEM_SAFARI_ZONE_NORTH_EAST_NUGGET

SafariZone_Northeast_MapBGEvents:
	bg_hidden_item_event 31, 35, 3, ITEM_RARE_CANDY, FLAG_HIDDEN_ITEM_SAFARI_ZONE_NORTH_EAST_RARE_CANDY
	bg_hidden_item_event 21, 5, 3, ITEM_ZINC, FLAG_HIDDEN_ITEM_SAFARI_ZONE_NORTH_EAST_ZINC

SafariZone_Northeast_MapEvents::
	map_events SafariZone_Northeast_ObjectEvents, 0x0, 0x0, SafariZone_Northeast_MapBGEvents

