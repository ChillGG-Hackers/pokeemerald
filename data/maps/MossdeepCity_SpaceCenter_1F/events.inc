MossdeepCity_SpaceCenter_1F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_SCIENTIST_1, 0, 7, 2, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, MossdeepCity_SpaceCenter_1F_EventScript_RocketLaunchCounter, 0
	object_event 2, OBJ_EVENT_GFX_SCIENTIST_1, 0, 2, 2, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, MossdeepCity_SpaceCenter_1F_EventScript_Scientist, 0
	object_event 3, OBJ_EVENT_GFX_SAILOR, 0, 6, 6, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, MossdeepCity_SpaceCenter_1F_EventScript_SunStoneMan, 0
	object_event 4, OBJ_EVENT_GFX_OLD_MAN, 0, 10, 2, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, MossdeepCity_SpaceCenter_1F_EventScript_OldMan, 0
	object_event 5, OBJ_EVENT_GFX_WOMAN_4, 0, 14, 7, 3, MOVEMENT_TYPE_WANDER_UP_AND_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, MossdeepCity_SpaceCenter_1F_EventScript_Woman, 0
	object_event 6, OBJ_EVENT_GFX_MAGMA_MEMBER_F, 0, 12, 9, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NORMAL, 2, MossdeepCity_SpaceCenter_1F_EventScript_Grunt3, FLAG_HIDE_MOSSDEEP_CITY_SPACE_CENTER_1F_TEAM_MAGMA
	object_event 7, OBJ_EVENT_GFX_MAGMA_MEMBER_M, 0, 11, 6, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NORMAL, 2, MossdeepCity_SpaceCenter_1F_EventScript_Grunt1, FLAG_HIDE_MOSSDEEP_CITY_SPACE_CENTER_1F_TEAM_MAGMA
	object_event 8, OBJ_EVENT_GFX_MAGMA_MEMBER_M, 0, 10, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NORMAL, 2, MossdeepCity_SpaceCenter_1F_EventScript_Grunt4, FLAG_HIDE_MOSSDEEP_CITY_SPACE_CENTER_1F_TEAM_MAGMA
	object_event 9, OBJ_EVENT_GFX_MAGMA_MEMBER_M, 0, 13, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NORMAL, 0, MossdeepCity_SpaceCenter_1F_EventScript_Grunt2, FLAG_HIDE_MOSSDEEP_CITY_SPACE_CENTER_1F_TEAM_MAGMA
	object_event 10, OBJ_EVENT_GFX_NINJA_BOY, 0, 2, 5, 0, MOVEMENT_TYPE_INVISIBLE, 1, 1, TRAINER_TYPE_NONE, 0, MossdeepCity_SpaceCenter_1F_EventScript_MagmaNote, FLAG_HIDE_MOSSDEEP_CITY_SPACE_CENTER_MAGMA_NOTE
	object_event 11, OBJ_EVENT_GFX_STEVEN, 0, 1, 4, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, MossdeepCity_SpaceCenter_1F_EventScript_Steven, FLAG_HIDE_MOSSDEEP_CITY_SPACE_CENTER_1F_STEVEN

MossdeepCity_SpaceCenter_1F_MapWarps:
	warp_def 7, 9, 0, 8, MAP_MOSSDEEP_CITY
	warp_def 8, 9, 0, 8, MAP_MOSSDEEP_CITY
	warp_def 13, 1, 0, 0, MAP_MOSSDEEP_CITY_SPACE_CENTER_2F

MossdeepCity_SpaceCenter_1F_MapEvents::
	map_events MossdeepCity_SpaceCenter_1F_ObjectEvents, MossdeepCity_SpaceCenter_1F_MapWarps, 0x0, 0x0

