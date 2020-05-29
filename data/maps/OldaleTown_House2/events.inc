OldaleTown_House2_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_POKEFAN_F, 0, 4, 4, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, OldaleTown_House2_EventScript_Woman, 0
	object_event 2, OBJ_EVENT_GFX_SCHOOL_KID_M, 0, 7, 4, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, OldaleTown_House2_EventScript_Man, 0

OldaleTown_House2_MapWarps:
	warp_def 3, 7, 0, 1, MAP_OLDALE_TOWN
	warp_def 4, 7, 0, 1, MAP_OLDALE_TOWN

OldaleTown_House2_MapEvents::
	map_events OldaleTown_House2_ObjectEvents, OldaleTown_House2_MapWarps, 0x0, 0x0

