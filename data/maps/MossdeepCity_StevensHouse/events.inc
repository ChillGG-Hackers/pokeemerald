MossdeepCity_StevensHouse_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_STEVEN, 0, 9, 6, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, MossdeepCity_StevensHouse_EventScript_Steven, FLAG_HIDE_MOSSDEEP_CITY_STEVENS_HOUSE_STEVEN
	object_event 2, OBJ_EVENT_GFX_ITEM_BALL, 0, 4, 3, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, MossdeepCity_StevensHouse_EventScript_BeldumPokeball, FLAG_HIDE_MOSSDEEP_CITY_STEVENS_HOUSE_BELDUM_POKEBALL
	object_event 3, OBJ_EVENT_GFX_NINJA_BOY, 0, 6, 4, 3, MOVEMENT_TYPE_INVISIBLE, 1, 1, TRAINER_TYPE_NONE, 0, MossdeepCity_StevensHouse_EventScript_Letter, FLAG_HIDE_MOSSDEEP_CITY_STEVENS_HOUSE_INVISIBLE_NINJA_BOY

MossdeepCity_StevensHouse_MapWarps:
	warp_def 3, 7, 0, 6, MAP_MOSSDEEP_CITY
	warp_def 4, 7, 0, 6, MAP_MOSSDEEP_CITY

MossdeepCity_StevensHouse_MapBGEvents:
	bg_event 0, 1, 0, BG_EVENT_PLAYER_FACING_ANY, MossdeepCity_StevensHouse_EventScript_RockDisplay
	bg_event 1, 1, 0, BG_EVENT_PLAYER_FACING_ANY, MossdeepCity_StevensHouse_EventScript_RockDisplay
	bg_event 10, 4, 3, BG_EVENT_PLAYER_FACING_ANY, MossdeepCity_StevensHouse_EventScript_RockDisplay
	bg_event 10, 6, 3, BG_EVENT_PLAYER_FACING_ANY, MossdeepCity_StevensHouse_EventScript_RockDisplay

MossdeepCity_StevensHouse_MapEvents::
	map_events MossdeepCity_StevensHouse_ObjectEvents, MossdeepCity_StevensHouse_MapWarps, 0x0, MossdeepCity_StevensHouse_MapBGEvents

