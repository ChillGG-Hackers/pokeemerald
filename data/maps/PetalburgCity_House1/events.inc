PetalburgCity_House1_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_GIRL_1, 0, 7, 4, 3, MOVEMENT_TYPE_WANDER_AROUND, 2, 2, TRAINER_TYPE_NONE, 0, PetalburgCity_House1_EventScript_Woman, 0
	object_event 2, OBJ_EVENT_GFX_EXPERT_M, 0, 4, 4, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, PetalburgCity_House1_EventScript_Man, 0

PetalburgCity_House1_MapWarps:
	warp_def 3, 8, 0, 0, MAP_PETALBURG_CITY
	warp_def 4, 8, 0, 0, MAP_PETALBURG_CITY

PetalburgCity_House1_MapEvents::
	map_events PetalburgCity_House1_ObjectEvents, PetalburgCity_House1_MapWarps, 0x0, 0x0

