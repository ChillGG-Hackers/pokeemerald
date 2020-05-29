VerdanturfTown_BattleTentLobby_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_EXPERT_M, 0, 6, 5, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, VerdanturfTown_BattleTentLobby_EventScript_Attendant, 0
	object_event 2, OBJ_EVENT_GFX_GIRL_1, 0, 0, 5, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, VerdanturfTown_BattleTentLobby_EventScript_AttractGiver, 0
	object_event 3, OBJ_EVENT_GFX_BOY_3, 0, 9, 7, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, VerdanturfTown_BattleTentLobby_EventScript_Boy1, 0
	object_event 4, OBJ_EVENT_GFX_BOY_2, 0, 1, 8, 3, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NONE, 0, VerdanturfTown_BattleTentLobby_EventScript_Boy2, 0
	object_event 5, OBJ_EVENT_GFX_SCOTT, 0, 12, 6, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, VerdanturfTown_BattleTentLobby_EventScript_Scott, FLAG_HIDE_VERDANTURF_TOWN_SCOTT
	object_event 6, OBJ_EVENT_GFX_LITTLE_BOY, 0, 2, 8, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, VerdanturfTown_BattleTentLobby_EventScript_LittleBoy, 0

VerdanturfTown_BattleTentLobby_MapWarps:
	warp_def 6, 9, 0, 0, MAP_VERDANTURF_TOWN
	warp_def 7, 9, 0, 0, MAP_VERDANTURF_TOWN

VerdanturfTown_BattleTentLobby_MapBGEvents:
	bg_event 4, 5, 0, BG_EVENT_PLAYER_FACING_ANY, VerdanturfTown_BattleTentLobby_EventScript_RulesBoard

VerdanturfTown_BattleTentLobby_MapEvents::
	map_events VerdanturfTown_BattleTentLobby_ObjectEvents, VerdanturfTown_BattleTentLobby_MapWarps, 0x0, VerdanturfTown_BattleTentLobby_MapBGEvents

