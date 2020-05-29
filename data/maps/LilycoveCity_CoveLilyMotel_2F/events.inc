LilycoveCity_CoveLilyMotel_2F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MAN_3, 0, 4, 6, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_CoveLilyMotel_2F_EventScript_GameDesigner, FLAG_HIDE_LILCOVE_MOTEL_GAME_DESIGNERS
	object_event 2, OBJ_EVENT_GFX_SCIENTIST_1, 0, 1, 4, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_CoveLilyMotel_2F_EventScript_GraphicArtist, FLAG_HIDE_LILCOVE_MOTEL_GAME_DESIGNERS
	object_event 3, OBJ_EVENT_GFX_FAT_MAN, 0, 7, 7, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_CoveLilyMotel_2F_EventScript_FatMan, FLAG_HIDE_LILCOVE_MOTEL_GAME_DESIGNERS
	object_event 4, OBJ_EVENT_GFX_MAN_4, 0, 10, 3, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_CoveLilyMotel_2F_EventScript_Programmer, FLAG_HIDE_LILCOVE_MOTEL_GAME_DESIGNERS
	object_event 5, OBJ_EVENT_GFX_GAMEBOY_KID, 0, 7, 3, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, LilycoveCity_CoveLilyMotel_2F_EventScript_GameBoyKid, FLAG_HIDE_LILCOVE_MOTEL_GAME_DESIGNERS
	object_event 6, OBJ_EVENT_GFX_WOMAN_2, 0, 4, 4, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, LilycoveCity_CoveLilyMotel_2F_EventScript_Woman, FLAG_HIDE_LILCOVE_MOTEL_GAME_DESIGNERS
	object_event 7, OBJ_EVENT_GFX_SCOTT, 0, 1, 7, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_CoveLilyMotel_2F_EventScript_Scott, FLAG_HIDE_LILCOVE_MOTEL_SCOTT

LilycoveCity_CoveLilyMotel_2F_MapWarps:
	warp_def 2, 1, 0, 2, MAP_LILYCOVE_CITY_COVE_LILY_MOTEL_1F

LilycoveCity_CoveLilyMotel_2F_MapEvents::
	map_events LilycoveCity_CoveLilyMotel_2F_ObjectEvents, LilycoveCity_CoveLilyMotel_2F_MapWarps, 0x0, 0x0

