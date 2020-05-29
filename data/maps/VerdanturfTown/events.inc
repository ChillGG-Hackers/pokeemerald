VerdanturfTown_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MAN_2, 0, 4, 17, 3, MOVEMENT_TYPE_WANDER_LEFT_AND_RIGHT, 1, 0, TRAINER_TYPE_NONE, 0, VerdanturfTown_EventScript_Man, 0
	object_event 2, OBJ_EVENT_GFX_TWIN, 0, 9, 2, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 0, TRAINER_TYPE_NONE, 0, VerdanturfTown_EventScript_Twin, 0
	object_event 3, OBJ_EVENT_GFX_BOY_1, 0, 7, 11, 3, MOVEMENT_TYPE_WANDER_UP_AND_DOWN, 0, 1, TRAINER_TYPE_NONE, 0, VerdanturfTown_EventScript_Boy, 0
	object_event 4, OBJ_EVENT_GFX_CAMPER, 0, 7, 6, 3, MOVEMENT_TYPE_WANDER_LEFT_AND_RIGHT, 1, 0, TRAINER_TYPE_NONE, 0, VerdanturfTown_EventScript_Camper, 0

VerdanturfTown_MapWarps:
	warp_def 3, 7, 0, 0, MAP_VERDANTURF_TOWN_BATTLE_TENT_LOBBY
	warp_def 12, 3, 0, 0, MAP_VERDANTURF_TOWN_MART
	warp_def 16, 3, 0, 0, MAP_VERDANTURF_TOWN_POKEMON_CENTER_1F
	warp_def 10, 14, 0, 0, MAP_VERDANTURF_TOWN_WANDAS_HOUSE
	warp_def 8, 1, 0, 1, MAP_RUSTURF_TUNNEL
	warp_def 1, 14, 0, 0, MAP_VERDANTURF_TOWN_FRIENDSHIP_RATERS_HOUSE
	warp_def 17, 15, 0, 0, MAP_VERDANTURF_TOWN_HOUSE

VerdanturfTown_MapBGEvents:
	bg_event 14, 3, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemartSign
	bg_event 14, 6, 0, BG_EVENT_PLAYER_FACING_ANY, VerdanturfTown_EventScript_TownSign
	bg_event 17, 3, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemonCenterSign
	bg_event 7, 14, 0, BG_EVENT_PLAYER_FACING_ANY, VerdanturfTown_EventScript_WandasHouseSign
	bg_event 13, 3, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemartSign
	bg_event 18, 3, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemonCenterSign
	bg_event 1, 8, 0, BG_EVENT_PLAYER_FACING_ANY, VerdanturfTown_EventScript_BattleTentSign
	bg_event 7, 3, 0, BG_EVENT_PLAYER_FACING_ANY, VerdanturfTown_EventScript_RusturfTunnelSign

VerdanturfTown_MapEvents::
	map_events VerdanturfTown_ObjectEvents, VerdanturfTown_MapWarps, 0x0, VerdanturfTown_MapBGEvents

