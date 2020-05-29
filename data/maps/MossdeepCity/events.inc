MossdeepCity_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_SAILOR, 0, 38, 12, 5, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, MossdeepCity_EventScript_Sailor, 0
	object_event 2, OBJ_EVENT_GFX_EXPERT_M, 0, 50, 34, 5, MOVEMENT_TYPE_WANDER_LEFT_AND_RIGHT, 1, 0, TRAINER_TYPE_NONE, 0, MossdeepCity_EventScript_ExpertM, 0
	object_event 3, OBJ_EVENT_GFX_POKEFAN_F, 0, 32, 12, 5, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, MossdeepCity_EventScript_PokefanF, 0
	object_event 4, OBJ_EVENT_GFX_NINJA_BOY, 0, 26, 21, 5, MOVEMENT_TYPE_WANDER_UP_AND_DOWN, 0, 1, TRAINER_TYPE_NONE, 0, MossdeepCity_EventScript_NinjaBoy, 0
	object_event 5, OBJ_EVENT_GFX_GIRL_1, 0, 45, 18, 7, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, MossdeepCity_EventScript_Girl, 0
	object_event 6, OBJ_EVENT_GFX_ITEM_BALL, 0, 62, 35, 5, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, MossdeepCity_EventScript_ItemNetBall, FLAG_ITEM_MOSSDEEP_CITY_NET_BALL
	object_event 7, OBJ_EVENT_GFX_MAN_1, 0, 55, 5, 7, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, MossdeepCity_EventScript_Man, 0
	object_event 8, OBJ_EVENT_GFX_WOMAN_1, 0, 56, 21, 7, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NONE, 0, MossdeepCity_EventScript_Woman, 0
	object_event 9, OBJ_EVENT_GFX_BOY_2, 0, 23, 13, 5, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, MossdeepCity_EventScript_KingsRockBoy, 0
	object_event 10, OBJ_EVENT_GFX_MAGMA_MEMBER_M, 0, 44, 23, 5, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, 0x0, FLAG_HIDE_MOSSDEEP_CITY_TEAM_MAGMA
	object_event 11, OBJ_EVENT_GFX_MAGMA_MEMBER_M, 0, 44, 24, 5, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NONE, 0, 0x0, FLAG_HIDE_MOSSDEEP_CITY_TEAM_MAGMA
	object_event 12, OBJ_EVENT_GFX_MAGMA_MEMBER_M, 0, 44, 25, 5, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, 0x0, FLAG_HIDE_MOSSDEEP_CITY_TEAM_MAGMA
	object_event 13, OBJ_EVENT_GFX_MAGMA_MEMBER_M, 0, 44, 26, 5, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NONE, 0, 0x0, FLAG_HIDE_MOSSDEEP_CITY_TEAM_MAGMA
	object_event 14, OBJ_EVENT_GFX_MAXIE, 0, 45, 25, 5, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, 0x0, FLAG_HIDE_MOSSDEEP_CITY_TEAM_MAGMA
	object_event 15, OBJ_EVENT_GFX_BLACK_BELT, 0, 19, 25, 3, MOVEMENT_TYPE_WALK_IN_PLACE_DOWN, 3, 3, TRAINER_TYPE_NONE, 0, MossdeepCity_EventScript_DynamicPunchTutor, 0
	object_event 16, OBJ_EVENT_GFX_SCOTT, 0, 61, 29, 5, MOVEMENT_TYPE_FACE_DOWN_AND_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, MossdeepCity_EventScript_Scott, FLAG_HIDE_MOSSDEEP_CITY_SCOTT
	object_event 17, OBJ_EVENT_GFX_BLACK_BELT, 0, 31, 29, 3, MOVEMENT_TYPE_WALK_IN_PLACE_DOWN, 3, 3, TRAINER_TYPE_NONE, 0, MossdeepCity_EventScript_BlackBelt, 0

MossdeepCity_MapWarps:
	warp_def 28, 9, 0, 0, MAP_MOSSDEEP_CITY_HOUSE1
	warp_def 38, 9, 0, 0, MAP_MOSSDEEP_CITY_GYM
	warp_def 28, 16, 0, 0, MAP_MOSSDEEP_CITY_POKEMON_CENTER_1F
	warp_def 67, 25, 0, 0, MAP_MOSSDEEP_CITY_HOUSE2
	warp_def 37, 18, 0, 0, MAP_MOSSDEEP_CITY_MART
	warp_def 49, 6, 0, 0, MAP_MOSSDEEP_CITY_HOUSE3
	warp_def 19, 10, 0, 0, MAP_MOSSDEEP_CITY_STEVENS_HOUSE
	warp_def 18, 16, 0, 1, MAP_MOSSDEEP_CITY_HOUSE4
	warp_def 64, 15, 0, 0, MAP_MOSSDEEP_CITY_SPACE_CENTER_1F
	warp_def 36, 24, 0, 0, MAP_MOSSDEEP_CITY_GAME_CORNER_1F

MossdeepCity_MapCoordEvents:
	coord_event 25, 25, 0, VAR_TEMP_1, 0, MossdeepCity_EventScript_VisitedMossdeep
	coord_event 26, 25, 0, VAR_TEMP_1, 0, MossdeepCity_EventScript_VisitedMossdeep
	coord_event 32, 27, 0, VAR_TEMP_1, 0, MossdeepCity_EventScript_VisitedMossdeep
	coord_event 33, 27, 0, VAR_TEMP_1, 0, MossdeepCity_EventScript_VisitedMossdeep
	coord_event 42, 21, 5, VAR_MOSSDEEP_CITY_STATE, 1, MossdeepCity_EventScript_TeamMagmaEnterSpaceCenter
	coord_event 41, 22, 5, VAR_MOSSDEEP_CITY_STATE, 1, MossdeepCity_EventScript_TeamMagmaEnterSpaceCenter
	coord_event 41, 23, 5, VAR_MOSSDEEP_CITY_STATE, 1, MossdeepCity_EventScript_TeamMagmaEnterSpaceCenter
	coord_event 41, 24, 5, VAR_MOSSDEEP_CITY_STATE, 1, MossdeepCity_EventScript_TeamMagmaEnterSpaceCenter
	coord_event 40, 25, 5, VAR_MOSSDEEP_CITY_STATE, 1, MossdeepCity_EventScript_TeamMagmaEnterSpaceCenter
	coord_event 40, 26, 5, VAR_MOSSDEEP_CITY_STATE, 1, MossdeepCity_EventScript_TeamMagmaEnterSpaceCenter

MossdeepCity_MapBGEvents:
	bg_event 25, 16, 0, BG_EVENT_PLAYER_FACING_ANY, MossdeepCity_EventScript_CitySign
	bg_event 34, 9, 0, BG_EVENT_PLAYER_FACING_ANY, MossdeepCity_EventScript_GymSign
	bg_event 29, 16, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemonCenterSign
	bg_event 38, 18, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemartSign
	bg_event 66, 16, 0, BG_EVENT_PLAYER_FACING_ANY, MossdeepCity_EventScript_SpaceCenterSign
	bg_event 30, 16, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemonCenterSign
	bg_event 39, 18, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemartSign
	bg_event 57, 21, 7, BG_EVENT_PLAYER_FACING_ANY, MossdeepCity_EventScript_WhiteRock

MossdeepCity_MapEvents::
	map_events MossdeepCity_ObjectEvents, MossdeepCity_MapWarps, MossdeepCity_MapCoordEvents, MossdeepCity_MapBGEvents

