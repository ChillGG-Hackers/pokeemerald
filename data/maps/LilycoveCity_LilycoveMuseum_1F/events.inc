LilycoveCity_LilycoveMuseum_1F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_BEAUTY, 0, 5, 12, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_LilycoveMuseum_1F_EventScript_Greeter, 0
	object_event 2, OBJ_EVENT_GFX_GENTLEMAN, 0, 16, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_LilycoveMuseum_1F_EventScript_Curator, FLAG_HIDE_LILYCOVE_MUSEUM_CURATOR
	object_event 3, OBJ_EVENT_GFX_SCHOOL_KID_M, 0, 13, 7, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_LilycoveMuseum_1F_EventScript_SchoolKidM, 0
	object_event 4, OBJ_EVENT_GFX_ARTIST, 0, 13, 10, 3, MOVEMENT_TYPE_WANDER_LEFT_AND_RIGHT, 2, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_LilycoveMuseum_1F_EventScript_Artist1, 0
	object_event 5, OBJ_EVENT_GFX_NINJA_BOY, 0, 2, 8, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_LilycoveMuseum_1F_EventScript_NinjaBoy, 0
	object_event 6, OBJ_EVENT_GFX_WOMAN_4, 0, 3, 8, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_LilycoveMuseum_1F_EventScript_Woman1, 0
	object_event 7, OBJ_EVENT_GFX_WOMAN_2, 0, 11, 3, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, LilycoveCity_LilycoveMuseum_1F_EventScript_Woman2, FLAG_HIDE_LILYCOVE_MUSEUM_PATRON_1
	object_event 8, OBJ_EVENT_GFX_ARTIST, 0, 19, 3, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, LilycoveCity_LilycoveMuseum_1F_EventScript_Artist2, FLAG_HIDE_LILYCOVE_MUSEUM_PATRON_4
	object_event 9, OBJ_EVENT_GFX_FAT_MAN, 0, 2, 2, 3, MOVEMENT_TYPE_WANDER_AROUND, 2, 2, TRAINER_TYPE_NONE, 0, LilycoveCity_LilycoveMuseum_1F_EventScript_FatMan, FLAG_HIDE_LILYCOVE_MUSEUM_TOURISTS
	object_event 10, OBJ_EVENT_GFX_PSYCHIC_M, 0, 6, 2, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, LilycoveCity_LilycoveMuseum_1F_EventScript_PsychicM, FLAG_HIDE_LILYCOVE_MUSEUM_PATRON_3

LilycoveCity_LilycoveMuseum_1F_MapWarps:
	warp_def 9, 13, 0, 3, MAP_LILYCOVE_CITY
	warp_def 10, 13, 0, 13, MAP_LILYCOVE_CITY
	warp_def 16, 1, 0, 0, MAP_LILYCOVE_CITY_LILYCOVE_MUSEUM_2F

LilycoveCity_LilycoveMuseum_1F_MapBGEvents:
	bg_event 1, 1, 0, BG_EVENT_PLAYER_FACING_ANY, LilycoveCity_LilycoveMuseum_1F_EventScript_FantasyPainting
	bg_event 2, 1, 0, BG_EVENT_PLAYER_FACING_ANY, LilycoveCity_LilycoveMuseum_1F_EventScript_FantasyPainting
	bg_event 5, 1, 0, BG_EVENT_PLAYER_FACING_ANY, LilycoveCity_LilycoveMuseum_1F_EventScript_BerryPainting
	bg_event 6, 1, 0, BG_EVENT_PLAYER_FACING_ANY, LilycoveCity_LilycoveMuseum_1F_EventScript_BerryPainting
	bg_event 9, 1, 0, BG_EVENT_PLAYER_FACING_ANY, LilycoveCity_LilycoveMuseum_1F_EventScript_OldPainting
	bg_event 3, 6, 0, BG_EVENT_PLAYER_FACING_ANY, LilycoveCity_LilycoveMuseum_1F_EventScript_WomanPainting
	bg_event 2, 6, 0, BG_EVENT_PLAYER_FACING_ANY, LilycoveCity_LilycoveMuseum_1F_EventScript_WomanPainting
	bg_event 15, 12, 0, BG_EVENT_PLAYER_FACING_ANY, LilycoveCity_LilycoveMuseum_EventScript_BirdSculpture
	bg_event 11, 1, 0, BG_EVENT_PLAYER_FACING_ANY, LilycoveCity_LilycoveMuseum_1F_EventScript_OldPainting
	bg_event 6, 6, 0, BG_EVENT_PLAYER_FACING_ANY, LilycoveCity_LilycoveMuseum_1F_EventScript_GrassPokemonPainting
	bg_event 17, 9, 0, BG_EVENT_PLAYER_FACING_ANY, LilycoveCity_LilycoveMuseum_1F_EventScript_StoneTablet
	bg_event 19, 1, 0, BG_EVENT_PLAYER_FACING_ANY, LilycoveCity_LilycoveMuseum_1F_EventScript_LegendaryPokemonPainting
	bg_event 20, 1, 0, BG_EVENT_PLAYER_FACING_ANY, LilycoveCity_LilycoveMuseum_1F_EventScript_LegendaryPokemonPainting
	bg_event 18, 9, 0, BG_EVENT_PLAYER_FACING_ANY, LilycoveCity_LilycoveMuseum_1F_EventScript_StoneTablet
	bg_event 18, 11, 0, BG_EVENT_PLAYER_FACING_ANY, LilycoveCity_LilycoveMuseum_1F_EventScript_PokeBallSculpture
	bg_event 16, 9, 0, BG_EVENT_PLAYER_FACING_ANY, LilycoveCity_LilycoveMuseum_1F_EventScript_StoneTablet

LilycoveCity_LilycoveMuseum_1F_MapEvents::
	map_events LilycoveCity_LilycoveMuseum_1F_ObjectEvents, LilycoveCity_LilycoveMuseum_1F_MapWarps, 0x0, LilycoveCity_LilycoveMuseum_1F_MapBGEvents

