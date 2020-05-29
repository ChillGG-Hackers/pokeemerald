MeteorFalls_StevensCave_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_STEVEN, 0, 19, 3, 3, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NONE, 0, MeteorFalls_StevensCave_EventScript_Steven, 0

MeteorFalls_StevensCave_MapWarps:
	warp_def 10, 29, 3, 5, MAP_METEOR_FALLS_1F_1R

MeteorFalls_StevensCave_MapEvents::
	map_events MeteorFalls_StevensCave_ObjectEvents, MeteorFalls_StevensCave_MapWarps, 0x0, 0x0

