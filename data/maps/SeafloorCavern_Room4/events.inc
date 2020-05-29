SeafloorCavern_Room4_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_AQUA_MEMBER_M, 0, 5, 8, 3, MOVEMENT_TYPE_FACE_DOWN_AND_LEFT, 1, 1, TRAINER_TYPE_NORMAL, 3, SeafloorCavern_Room4_EventScript_Grunt3, FLAG_HIDE_SEAFLOOR_CAVERN_AQUA_GRUNTS
	object_event 2, OBJ_EVENT_GFX_AQUA_MEMBER_F, 0, 5, 12, 3, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NORMAL, 3, SeafloorCavern_Room4_EventScript_Grunt4, FLAG_HIDE_SEAFLOOR_CAVERN_AQUA_GRUNTS

SeafloorCavern_Room4_MapWarps:
	warp_def 13, 1, 3, 1, MAP_SEAFLOOR_CAVERN_ROOM2
	warp_def 4, 1, 3, 1, MAP_SEAFLOOR_CAVERN_ROOM5
	warp_def 9, 10, 3, 2, MAP_SEAFLOOR_CAVERN_ROOM5
	warp_def 10, 15, 3, 1, MAP_SEAFLOOR_CAVERN_ENTRANCE

SeafloorCavern_Room4_MapEvents::
	map_events SeafloorCavern_Room4_ObjectEvents, SeafloorCavern_Room4_MapWarps, 0x0, 0x0

