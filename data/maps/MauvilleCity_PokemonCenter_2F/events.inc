MauvilleCity_PokemonCenter_2F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_TEALA, 0, 6, 2, 0, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, Common_EventScript_UnionRoomAttendant, 0
	object_event 2, OBJ_EVENT_GFX_TEALA, 0, 2, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, Common_EventScript_WirelessClubAttendant, 0
	object_event 3, OBJ_EVENT_GFX_TEALA, 0, 10, 2, 0, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, Common_EventScript_DirectCornerAttendant, 0
	object_event 4, OBJ_EVENT_GFX_MYSTERY_GIFT_MAN, 0, 1, 2, 0, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, CableClub_EventScript_MysteryGiftMan, FLAG_HIDE_POKEMON_CENTER_2F_MYSTERY_GIFT_MAN
	object_event 5, OBJ_EVENT_GFX_YOUNGSTER, 0, 8, 8, 3, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NONE, 0, MauvilleCity_PokemonCenter_2F_EventScript_Youngster, 0

MauvilleCity_PokemonCenter_2F_MapWarps:
	warp_def 1, 6, 4, 2, MAP_MAUVILLE_CITY_POKEMON_CENTER_1F
	warp_def 5, 1, 3, 0, MAP_UNION_ROOM
	warp_def 9, 1, 3, 0, MAP_TRADE_CENTER

MauvilleCity_PokemonCenter_2F_MapEvents::
	map_events MauvilleCity_PokemonCenter_2F_ObjectEvents, MauvilleCity_PokemonCenter_2F_MapWarps, 0x0, 0x0

