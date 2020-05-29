LilycoveCity_House3_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_GAMEBOY_KID, 0, 3, 4, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, LilycoveCity_House3_EventScript_GameBoyKid4, 0
	object_event 2, OBJ_EVENT_GFX_POKEFAN_F, 0, 7, 4, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_House3_EventScript_PokefanF, 0
	object_event 3, OBJ_EVENT_GFX_GAMEBOY_KID, 0, 1, 4, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, LilycoveCity_House3_EventScript_GameBoyKid2, 0
	object_event 4, OBJ_EVENT_GFX_GAMEBOY_KID, 0, 2, 5, 3, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NONE, 0, LilycoveCity_House3_EventScript_GameBoyKid3, 0
	object_event 5, OBJ_EVENT_GFX_GAMEBOY_KID, 0, 2, 3, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, LilycoveCity_House3_EventScript_GameBoyKid1, 0
	object_event 6, OBJ_EVENT_GFX_MAN_1, 0, 7, 5, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, LilycoveCity_House3_EventScript_Man, 0

LilycoveCity_House3_MapWarps:
	warp_def 3, 7, 0, 10, MAP_LILYCOVE_CITY
	warp_def 4, 7, 0, 10, MAP_LILYCOVE_CITY

LilycoveCity_House3_MapEvents::
	map_events LilycoveCity_House3_ObjectEvents, LilycoveCity_House3_MapWarps, 0x0, 0x0

