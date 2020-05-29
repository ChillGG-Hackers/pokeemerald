PetalburgCity_House2_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_POKEFAN_F, 0, 2, 5, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, PetalburgCity_House2_EventScript_Woman, 0
	object_event 2, OBJ_EVENT_GFX_SCHOOL_KID_M, 0, 7, 5, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, PetalburgCity_House2_EventScript_SchoolKid, 0

PetalburgCity_House2_MapWarps:
	warp_def 3, 7, 0, 4, MAP_PETALBURG_CITY
	warp_def 4, 7, 0, 4, MAP_PETALBURG_CITY

PetalburgCity_House2_MapEvents::
	map_events PetalburgCity_House2_ObjectEvents, PetalburgCity_House2_MapWarps, 0x0, 0x0

