MossdeepCity_PokemonCenter_2F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_TEALA, 0, 6, 2, 0, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, Common_EventScript_UnionRoomAttendant, 0
	object_event 2, OBJ_EVENT_GFX_TEALA, 0, 2, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, Common_EventScript_WirelessClubAttendant, 0
	object_event 3, OBJ_EVENT_GFX_TEALA, 0, 10, 2, 0, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, Common_EventScript_DirectCornerAttendant, 0
	object_event 4, OBJ_EVENT_GFX_MYSTERY_GIFT_MAN, 0, 1, 2, 0, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, CableClub_EventScript_MysteryGiftMan, FLAG_HIDE_POKEMON_CENTER_2F_MYSTERY_GIFT_MAN
	object_event 5, OBJ_EVENT_GFX_WOMAN_5, 0, 11, 7, 3, MOVEMENT_TYPE_WANDER_LEFT_AND_RIGHT, 1, 1, TRAINER_TYPE_NONE, 0, MossdeepCity_PokemonCenter_2F_EventScript_Woman5, 0

MossdeepCity_PokemonCenter_2F_MapWarps:
	warp_def 1, 6, 4, 2, MAP_MOSSDEEP_CITY_POKEMON_CENTER_1F
	warp_def 5, 1, 3, 0, MAP_UNION_ROOM
	warp_def 9, 1, 3, 0, MAP_TRADE_CENTER

MossdeepCity_PokemonCenter_2F_MapEvents::
	map_events MossdeepCity_PokemonCenter_2F_ObjectEvents, MossdeepCity_PokemonCenter_2F_MapWarps, 0x0, 0x0

