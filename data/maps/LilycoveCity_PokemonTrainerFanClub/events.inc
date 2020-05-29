LilycoveCity_PokemonTrainerFanClub_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_LASS, 0, 3, 11, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_PokemonTrainerFanClub_EventScript_Lass, 0
	object_event 2, OBJ_EVENT_GFX_MAN_4, 0, 8, 10, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_PokemonTrainerFanClub_EventScript_Man, 0
	object_event 3, OBJ_EVENT_GFX_POKEFAN_M, 0, 6, 11, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_PokemonTrainerFanClub_EventScript_PokefanM, 0
	object_event 4, OBJ_EVENT_GFX_LITTLE_GIRL, 0, 5, 8, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_PokemonTrainerFanClub_EventScript_LittleGirl, 0
	object_event 5, OBJ_EVENT_GFX_NINJA_BOY, 0, 7, 11, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_PokemonTrainerFanClub_EventScript_NinjaBoy, FLAG_HIDE_FANCLUB_LITTLE_BOY
	object_event 6, OBJ_EVENT_GFX_BOY_2, 0, 1, 9, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_PokemonTrainerFanClub_EventScript_Boy, FLAG_HIDE_FANCLUB_BOY
	object_event 7, OBJ_EVENT_GFX_WOMAN_3, 0, 3, 10, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_PokemonTrainerFanClub_EventScript_Woman, FLAG_HIDE_FANCLUB_LADY
	object_event 8, OBJ_EVENT_GFX_EXPERT_F, 0, 10, 10, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_PokemonTrainerFanClub_EventScript_ExpertF, FLAG_HIDE_FANCLUB_OLD_LADY
	object_event 9, OBJ_EVENT_GFX_BOY_1, 0, 11, 5, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, LilycoveCity_PokemonTrainerFanClub_EventScript_Interviewer, FLAG_HIDE_LILYCOVE_FAN_CLUB_INTERVIEWER

LilycoveCity_PokemonTrainerFanClub_MapWarps:
	warp_def 6, 13, 0, 5, MAP_LILYCOVE_CITY
	warp_def 5, 13, 0, 5, MAP_LILYCOVE_CITY

LilycoveCity_PokemonTrainerFanClub_MapEvents::
	map_events LilycoveCity_PokemonTrainerFanClub_ObjectEvents, LilycoveCity_PokemonTrainerFanClub_MapWarps, 0x0, 0x0

