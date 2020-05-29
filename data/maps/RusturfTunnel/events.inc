RusturfTunnel_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_BLACK_BELT, 0, 23, 5, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, RusturfTunnel_EventScript_WandasBoyfriend, FLAG_HIDE_RUSTURF_TUNNEL_WANDAS_BOYFRIEND
	object_event 2, OBJ_EVENT_GFX_BREAKABLE_ROCK, 0, 24, 5, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, EventScript_RockSmash, FLAG_HIDE_RUSTURF_TUNNEL_ROCK_1
	object_event 3, OBJ_EVENT_GFX_ITEM_BALL, 0, 3, 1, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, RusturfTunnel_EventScript_ItemPokeBall, FLAG_ITEM_RUSTURF_TUNNEL_POKE_BALL
	object_event 4, OBJ_EVENT_GFX_ITEM_BALL, 0, 30, 2, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, RusturfTunnel_EventScript_ItemMaxEther, FLAG_ITEM_RUSTURF_TUNNEL_MAX_ETHER
	object_event 5, OBJ_EVENT_GFX_EXPERT_M, 0, 5, 4, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_HIDE_RUSTURF_TUNNEL_BRINEY
	object_event 6, OBJ_EVENT_GFX_AQUA_MEMBER_M, 0, 14, 5, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, RusturfTunnel_EventScript_Grunt, FLAG_HIDE_RUSTURF_TUNNEL_AQUA_GRUNT
	object_event 7, OBJ_EVENT_GFX_WINGULL, 0, 14, 4, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, RusturfTunnel_EventScript_Peeko, FLAG_HIDE_RUSTURF_TUNNEL_PEEKO
	object_event 8, OBJ_EVENT_GFX_BREAKABLE_ROCK, 0, 24, 4, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, EventScript_RockSmash, FLAG_HIDE_RUSTURF_TUNNEL_ROCK_2
	object_event 9, OBJ_EVENT_GFX_HIKER, 0, 32, 13, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NORMAL, 3, RusturfTunnel_EventScript_Mike, 0
	object_event 10, OBJ_EVENT_GFX_WOMAN_2, 0, 25, 4, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, RusturfTunnel_EventScript_Wanda, FLAG_HIDE_RUSTURF_TUNNEL_WANDA

RusturfTunnel_MapWarps:
	warp_def 4, 10, 3, 0, MAP_ROUTE116
	warp_def 29, 16, 3, 4, MAP_VERDANTURF_TOWN
	warp_def 18, 20, 3, 2, MAP_ROUTE116

RusturfTunnel_MapCoordEvents:
	coord_event 23, 4, 3, 0, 0, RusturfTunnel_EventScript_TunnelBlockagePos1
	coord_event 9, 4, 3, VAR_RUSTURF_TUNNEL_STATE, 2, RusturfTunnel_EventScript_AquaGruntBackUp
	coord_event 9, 5, 3, VAR_RUSTURF_TUNNEL_STATE, 2, RusturfTunnel_EventScript_AquaGruntBackUp
	coord_event 25, 4, 3, 0, 0, RusturfTunnel_EventScript_TunnelBlockagePos2
	coord_event 25, 5, 3, 0, 0, RusturfTunnel_EventScript_TunnelBlockagePos3

RusturfTunnel_MapEvents::
	map_events RusturfTunnel_ObjectEvents, RusturfTunnel_MapWarps, RusturfTunnel_MapCoordEvents, 0x0

