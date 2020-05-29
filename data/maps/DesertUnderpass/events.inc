DesertUnderpass_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_FOSSIL, 0, 132, 10, 0, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, DesertUnderpass_EventScript_Fossil, FLAG_HIDE_DESERT_UNDERPASS_FOSSIL

DesertUnderpass_MapWarps:
	warp_def 10, 12, 0, 2, MAP_ROUTE114_FOSSIL_MANIACS_TUNNEL

DesertUnderpass_MapEvents::
	map_events DesertUnderpass_ObjectEvents, DesertUnderpass_MapWarps, 0x0, 0x0

