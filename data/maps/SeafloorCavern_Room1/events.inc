SeafloorCavern_Room1_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_PUSHABLE_BOULDER, 0, 5, 11, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, EventScript_StrengthBoulder, FLAG_TEMP_11
	object_event 2, OBJ_EVENT_GFX_PUSHABLE_BOULDER, 0, 12, 11, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, EventScript_StrengthBoulder, FLAG_TEMP_12
	object_event 3, OBJ_EVENT_GFX_BREAKABLE_ROCK, 0, 5, 10, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, EventScript_RockSmash, FLAG_TEMP_13
	object_event 4, OBJ_EVENT_GFX_AQUA_MEMBER_M, 0, 8, 6, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NORMAL, 2, SeafloorCavern_Room1_EventScript_Grunt1, FLAG_HIDE_SEAFLOOR_CAVERN_AQUA_GRUNTS
	object_event 5, OBJ_EVENT_GFX_AQUA_MEMBER_M, 0, 15, 10, 3, MOVEMENT_TYPE_FACE_UP_AND_RIGHT, 1, 1, TRAINER_TYPE_NORMAL, 3, SeafloorCavern_Room1_EventScript_Grunt2, FLAG_HIDE_SEAFLOOR_CAVERN_AQUA_GRUNTS

SeafloorCavern_Room1_MapWarps:
	warp_def 5, 18, 3, 1, MAP_SEAFLOOR_CAVERN_ENTRANCE
	warp_def 17, 13, 3, 0, MAP_SEAFLOOR_CAVERN_ROOM5
	warp_def 6, 2, 3, 0, MAP_SEAFLOOR_CAVERN_ROOM2

SeafloorCavern_Room1_MapEvents::
	map_events SeafloorCavern_Room1_ObjectEvents, SeafloorCavern_Room1_MapWarps, 0x0, 0x0

