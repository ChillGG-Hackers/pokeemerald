MossdeepCity_SpaceCenter_2F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_RICH_BOY, 0, 6, 2, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, MossdeepCity_SpaceCenter_2F_EventScript_RichBoy, 0
	object_event 2, OBJ_EVENT_GFX_GENTLEMAN, 0, 11, 8, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, MossdeepCity_SpaceCenter_2F_EventScript_Gentleman, 0
	object_event 3, OBJ_EVENT_GFX_SCIENTIST_1, 0, 5, 6, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, MossdeepCity_SpaceCenter_2F_EventScript_Scientist, 0
	object_event 4, OBJ_EVENT_GFX_STEVEN, 0, 1, 8, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, MossdeepCity_SpaceCenter_2F_EventScript_Steven, FLAG_HIDE_MOSSDEEP_CITY_SPACE_CENTER_2F_STEVEN
	object_event 5, OBJ_EVENT_GFX_MAGMA_MEMBER_M, 0, 12, 2, 3, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NONE, 0, MossdeepCity_SpaceCenter_2F_EventScript_Grunt6, FLAG_HIDE_MOSSDEEP_CITY_SPACE_CENTER_2F_TEAM_MAGMA
	object_event 6, OBJ_EVENT_GFX_MAGMA_MEMBER_M, 0, 13, 3, 3, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NONE, 0, MossdeepCity_SpaceCenter_2F_EventScript_Grunt5, FLAG_HIDE_MOSSDEEP_CITY_SPACE_CENTER_2F_TEAM_MAGMA
	object_event 7, OBJ_EVENT_GFX_MAGMA_MEMBER_M, 0, 14, 2, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, MossdeepCity_SpaceCenter_2F_EventScript_Grunt7, FLAG_HIDE_MOSSDEEP_CITY_SPACE_CENTER_2F_TEAM_MAGMA
	object_event 8, OBJ_EVENT_GFX_MAGMA_MEMBER_M, 0, 0, 8, 3, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NONE, 0, MossdeepCity_SpaceCenter_2F_EventScript_Tabitha, FLAG_HIDE_MOSSDEEP_CITY_SPACE_CENTER_2F_TEAM_MAGMA
	object_event 9, OBJ_EVENT_GFX_MAXIE, 0, 1, 9, 3, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NONE, 0, MossdeepCity_SpaceCenter_2F_EventScript_Maxie, FLAG_HIDE_MOSSDEEP_CITY_SPACE_CENTER_2F_TEAM_MAGMA

MossdeepCity_SpaceCenter_2F_MapWarps:
	warp_def 13, 1, 0, 2, MAP_MOSSDEEP_CITY_SPACE_CENTER_1F

MossdeepCity_SpaceCenter_2F_MapEvents::
	map_events MossdeepCity_SpaceCenter_2F_ObjectEvents, MossdeepCity_SpaceCenter_2F_MapWarps, 0x0, 0x0

