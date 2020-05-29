DewfordTown_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_WOMAN_2, 0, 7, 12, 3, MOVEMENT_TYPE_WANDER_LEFT_AND_RIGHT, 1, 0, TRAINER_TYPE_NONE, 0, DewfordTown_EventScript_Woman, 0
	object_event 2, OBJ_EVENT_GFX_EXPERT_M, 0, 12, 9, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 1, TRAINER_TYPE_NONE, 3, DewfordTown_EventScript_Briney, FLAG_HIDE_MR_BRINEY_DEWFORD_TOWN
	object_event 3, OBJ_EVENT_GFX_FISHERMAN, 0, 12, 14, 3, MOVEMENT_TYPE_WANDER_LEFT_AND_RIGHT, 1, 0, TRAINER_TYPE_NONE, 0, DewfordTown_EventScript_OldRodFisherman, 0
	object_event 4, OBJ_EVENT_GFX_MR_BRINEYS_BOAT, 0, 12, 8, 1, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_HIDE_MR_BRINEY_BOAT_DEWFORD_TOWN
	object_event 5, OBJ_EVENT_GFX_BOY_1, 0, 1, 6, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, DewfordTown_EventScript_TrendyPhraseBoy, 0

DewfordTown_MapWarps:
	warp_def 3, 3, 0, 0, MAP_DEWFORD_TOWN_HALL
	warp_def 2, 10, 0, 0, MAP_DEWFORD_TOWN_POKEMON_CENTER_1F
	warp_def 8, 17, 0, 0, MAP_DEWFORD_TOWN_GYM
	warp_def 17, 14, 0, 0, MAP_DEWFORD_TOWN_HOUSE1
	warp_def 8, 8, 0, 0, MAP_DEWFORD_TOWN_HOUSE2

DewfordTown_MapBGEvents:
	bg_event 10, 10, 0, BG_EVENT_PLAYER_FACING_ANY, DewfordTown_EventScript_TownSign
	bg_event 11, 16, 0, BG_EVENT_PLAYER_FACING_ANY, DewfordTown_EventScript_GymSign
	bg_event 4, 10, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemonCenterSign
	bg_event 3, 10, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemonCenterSign
	bg_event 2, 4, 0, BG_EVENT_PLAYER_FACING_ANY, DewfordTown_EventScript_HallSign

DewfordTown_MapEvents::
	map_events DewfordTown_ObjectEvents, DewfordTown_MapWarps, 0x0, DewfordTown_MapBGEvents

