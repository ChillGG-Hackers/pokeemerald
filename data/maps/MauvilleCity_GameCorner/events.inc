MauvilleCity_GameCorner_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_WOMAN_2, 0, 12, 7, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, MauvilleCity_GameCorner_EventScript_Woman2, 0
	object_event 2, OBJ_EVENT_GFX_GENTLEMAN, 0, 16, 5, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, MauvilleCity_GameCorner_EventScript_Gentleman, 0
	object_event 3, OBJ_EVENT_GFX_BEAUTY, 0, 11, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, MauvilleCity_GameCorner_EventScript_CoinsClerk, 0
	object_event 4, OBJ_EVENT_GFX_BEAUTY, 0, 14, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, MauvilleCity_GameCorner_EventScript_PrizeCornerDolls, 0
	object_event 5, OBJ_EVENT_GFX_GIRL_2, 0, 7, 3, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, MauvilleCity_GameCorner_EventScript_Girl, 0
	object_event 6, OBJ_EVENT_GFX_POKEFAN_M, 0, 19, 4, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, MauvilleCity_GameCorner_EventScript_PokefanM, 0
	object_event 7, OBJ_EVENT_GFX_OLD_MAN, 0, 20, 8, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, MauvilleCity_GameCorner_EventScript_OldMan, 0
	object_event 8, OBJ_EVENT_GFX_COOK, 0, 6, 8, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, MauvilleCity_GameCorner_EventScript_Cook, 0
	object_event 9, OBJ_EVENT_GFX_BEAUTY, 0, 13, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, MauvilleCity_GameCorner_EventScript_PrizeCornerTMs, 0
	object_event 10, OBJ_EVENT_GFX_MAN_3, 0, 1, 7, 3, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NONE, 0, MauvilleCity_GameCorner_EventScript_Man, 0
	object_event 11, OBJ_EVENT_GFX_MANIAC, 0, 9, 8, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, MauvilleCity_GameCorner_EventScript_Maniac, 0
	object_event 12, OBJ_EVENT_GFX_WOMAN_5, 0, 4, 6, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, MauvilleCity_GameCorner_EventScript_Woman, 0

MauvilleCity_GameCorner_MapWarps:
	warp_def 11, 10, 3, 5, MAP_MAUVILLE_CITY
	warp_def 12, 10, 3, 5, MAP_MAUVILLE_CITY

MauvilleCity_GameCorner_MapBGEvents:
	bg_event 2, 6, 0, BG_EVENT_PLAYER_FACING_EAST, MauvilleCity_GameCorner_EventScript_SlotMachine0
	bg_event 2, 8, 0, BG_EVENT_PLAYER_FACING_EAST, MauvilleCity_GameCorner_EventScript_SlotMachine1
	bg_event 2, 9, 0, BG_EVENT_PLAYER_FACING_EAST, MauvilleCity_GameCorner_EventScript_SlotMachine2
	bg_event 3, 7, 0, BG_EVENT_PLAYER_FACING_WEST, MauvilleCity_GameCorner_EventScript_SlotMachine3
	bg_event 3, 8, 0, BG_EVENT_PLAYER_FACING_WEST, MauvilleCity_GameCorner_EventScript_SlotMachine4
	bg_event 3, 9, 0, BG_EVENT_PLAYER_FACING_WEST, MauvilleCity_GameCorner_EventScript_SlotMachine5
	bg_event 7, 6, 0, BG_EVENT_PLAYER_FACING_EAST, MauvilleCity_GameCorner_EventScript_SlotMachine6
	bg_event 7, 7, 0, BG_EVENT_PLAYER_FACING_EAST, MauvilleCity_GameCorner_EventScript_SlotMachine7
	bg_event 7, 9, 0, BG_EVENT_PLAYER_FACING_EAST, MauvilleCity_GameCorner_EventScript_SlotMachine8
	bg_event 8, 6, 0, BG_EVENT_PLAYER_FACING_WEST, MauvilleCity_GameCorner_EventScript_SlotMachine9
	bg_event 8, 7, 0, BG_EVENT_PLAYER_FACING_WEST, MauvilleCity_GameCorner_EventScript_SlotMachine10
	bg_event 8, 9, 0, BG_EVENT_PLAYER_FACING_WEST, MauvilleCity_GameCorner_EventScript_SlotMachine11
	bg_event 14, 6, 0, BG_EVENT_PLAYER_FACING_ANY, Roulette_EventScript_Table1
	bg_event 15, 6, 0, BG_EVENT_PLAYER_FACING_ANY, Roulette_EventScript_Table1
	bg_event 14, 7, 0, BG_EVENT_PLAYER_FACING_ANY, Roulette_EventScript_Table1
	bg_event 15, 7, 0, BG_EVENT_PLAYER_FACING_ANY, Roulette_EventScript_Table1
	bg_event 14, 8, 0, BG_EVENT_PLAYER_FACING_ANY, Roulette_EventScript_Table1
	bg_event 15, 8, 0, BG_EVENT_PLAYER_FACING_ANY, Roulette_EventScript_Table1
	bg_event 18, 6, 0, BG_EVENT_PLAYER_FACING_ANY, Roulette_EventScript_Table2
	bg_event 19, 6, 0, BG_EVENT_PLAYER_FACING_ANY, Roulette_EventScript_Table2
	bg_event 18, 7, 0, BG_EVENT_PLAYER_FACING_ANY, Roulette_EventScript_Table2
	bg_event 19, 7, 0, BG_EVENT_PLAYER_FACING_ANY, Roulette_EventScript_Table2
	bg_event 18, 8, 0, BG_EVENT_PLAYER_FACING_ANY, Roulette_EventScript_Table2
	bg_event 19, 8, 0, BG_EVENT_PLAYER_FACING_ANY, Roulette_EventScript_Table2

MauvilleCity_GameCorner_MapEvents::
	map_events MauvilleCity_GameCorner_ObjectEvents, MauvilleCity_GameCorner_MapWarps, 0x0, MauvilleCity_GameCorner_MapBGEvents

