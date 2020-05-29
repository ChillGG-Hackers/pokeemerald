OldaleTown_House1_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_WOMAN_2, 0, 6, 4, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, OldaleTown_House1_EventScript_Woman, 0

OldaleTown_House1_MapWarps:
	warp_def 3, 8, 0, 0, MAP_OLDALE_TOWN
	warp_def 4, 8, 0, 0, MAP_OLDALE_TOWN

OldaleTown_House1_MapEvents::
	map_events OldaleTown_House1_ObjectEvents, OldaleTown_House1_MapWarps, 0x0, 0x0

