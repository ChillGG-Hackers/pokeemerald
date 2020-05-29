VerdanturfTown_FriendshipRatersHouse_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_WOMAN_2, 0, 3, 4, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, VerdanturfTown_FriendshipRatersHouse_EventScript_FriendshipRater, 0
	object_event 2, OBJ_EVENT_GFX_PIKACHU, 0, 4, 4, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, VerdanturfTown_FriendshipRatersHouse_EventScript_Pikachu, 0

VerdanturfTown_FriendshipRatersHouse_MapWarps:
	warp_def 3, 7, 0, 5, MAP_VERDANTURF_TOWN
	warp_def 4, 7, 0, 5, MAP_VERDANTURF_TOWN

VerdanturfTown_FriendshipRatersHouse_MapEvents::
	map_events VerdanturfTown_FriendshipRatersHouse_ObjectEvents, VerdanturfTown_FriendshipRatersHouse_MapWarps, 0x0, 0x0

