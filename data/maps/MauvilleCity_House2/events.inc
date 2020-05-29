MauvilleCity_House2_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_WOMAN_3, 0, 4, 5, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, MauvilleCity_House2_EventScript_Woman, 0

MauvilleCity_House2_MapWarps:
	warp_def 3, 8, 0, 6, MAP_MAUVILLE_CITY
	warp_def 4, 8, 0, 6, MAP_MAUVILLE_CITY

MauvilleCity_House2_MapEvents::
	map_events MauvilleCity_House2_ObjectEvents, MauvilleCity_House2_MapWarps, 0x0, 0x0

