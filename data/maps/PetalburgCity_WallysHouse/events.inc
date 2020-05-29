PetalburgCity_WallysHouse_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_POKEFAN_M, 0, 3, 4, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, PetalburgCity_WallysHouse_EventScript_WallyUncle, 0
	object_event 2, OBJ_EVENT_GFX_WOMAN_4, 0, 7, 5, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, PetalburgCity_WallysHouse_EventScript_WallyAunt, 0

PetalburgCity_WallysHouse_MapWarps:
	warp_def 3, 7, 0, 1, MAP_PETALBURG_CITY
	warp_def 4, 7, 0, 1, MAP_PETALBURG_CITY

PetalburgCity_WallysHouse_MapEvents::
	map_events PetalburgCity_WallysHouse_ObjectEvents, PetalburgCity_WallysHouse_MapWarps, 0x0, 0x0

