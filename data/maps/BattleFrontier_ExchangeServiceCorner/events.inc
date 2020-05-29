BattleFrontier_ExchangeServiceCorner_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_TEALA, 0, 4, 4, 0, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, BattleFrontier_ExchangeServiceCorner_EventScript_DecorClerk1, 0
	object_event 2, OBJ_EVENT_GFX_RICH_BOY, 0, 0, 5, 0, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_ExchangeServiceCorner_EventScript_RichBoy, 0
	object_event 3, OBJ_EVENT_GFX_POKEFAN_F, 0, 0, 4, 0, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_ExchangeServiceCorner_EventScript_PokefanF, 0
	object_event 4, OBJ_EVENT_GFX_SAILOR, 0, 14, 6, 0, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_ExchangeServiceCorner_EventScript_Sailor, 0
	object_event 5, OBJ_EVENT_GFX_MAN_5, 0, 1, 9, 0, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_ExchangeServiceCorner_EventScript_Man, 0
	object_event 6, OBJ_EVENT_GFX_TEALA, 0, 5, 5, 0, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, BattleFrontier_ExchangeServiceCorner_EventScript_DecorClerk2, 0
	object_event 7, OBJ_EVENT_GFX_TEALA, 0, 9, 5, 0, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, BattleFrontier_ExchangeServiceCorner_EventScript_VitaminClerk, 0
	object_event 8, OBJ_EVENT_GFX_TEALA, 0, 10, 4, 0, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, BattleFrontier_ExchangeServiceCorner_EventScript_HoldItemClerk, 0
	object_event 9, OBJ_EVENT_GFX_GIRL_1, 0, 12, 10, 0, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_ExchangeServiceCorner_EventScript_Girl, 0

BattleFrontier_ExchangeServiceCorner_MapWarps:
	warp_def 7, 10, 0, 6, MAP_BATTLE_FRONTIER_OUTSIDE_EAST
	warp_def 6, 10, 0, 6, MAP_BATTLE_FRONTIER_OUTSIDE_EAST
	warp_def 8, 10, 0, 6, MAP_BATTLE_FRONTIER_OUTSIDE_EAST

BattleFrontier_ExchangeServiceCorner_MapEvents::
	map_events BattleFrontier_ExchangeServiceCorner_ObjectEvents, BattleFrontier_ExchangeServiceCorner_MapWarps, 0x0, 0x0

