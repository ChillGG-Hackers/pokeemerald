MauvilleCity_House1_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_SCIENTIST_1, 0, 4, 4, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, MauvilleCity_House1_EventScript_RockSmashDude, 0

MauvilleCity_House1_MapWarps:
	warp_def 3, 7, 0, 4, MAP_MAUVILLE_CITY
	warp_def 4, 7, 0, 4, MAP_MAUVILLE_CITY

MauvilleCity_House1_MapEvents::
	map_events MauvilleCity_House1_ObjectEvents, MauvilleCity_House1_MapWarps, 0x0, 0x0

