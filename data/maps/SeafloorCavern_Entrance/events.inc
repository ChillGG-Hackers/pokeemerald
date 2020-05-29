SeafloorCavern_Entrance_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_AQUA_MEMBER_M, 0, 10, 2, 3, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NONE, 0, SeafloorCavern_Entrance_EventScript_Grunt, FLAG_HIDE_SEAFLOOR_CAVERN_ENTRANCE_AQUA_GRUNT

SeafloorCavern_Entrance_MapWarps:
	warp_def 10, 18, 3, 0, MAP_UNDERWATER4
	warp_def 10, 1, 3, 0, MAP_SEAFLOOR_CAVERN_ROOM1

SeafloorCavern_Entrance_MapEvents::
	map_events SeafloorCavern_Entrance_ObjectEvents, SeafloorCavern_Entrance_MapWarps, 0x0, 0x0

