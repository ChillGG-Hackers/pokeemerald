DewfordTown_Hall_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_GIRL_2, 0, 4, 6, 0, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, DewfordTown_Hall_EventScript_Girl, 0
	object_event 2, OBJ_EVENT_GFX_WOMAN_2, 0, 1, 5, 0, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, DewfordTown_Hall_EventScript_Woman, 0
	object_event 3, OBJ_EVENT_GFX_MAN_1, 0, 5, 4, 0, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, DewfordTown_Hall_EventScript_Man, 0
	object_event 4, OBJ_EVENT_GFX_EXPERT_M, 0, 9, 3, 0, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, DewfordTown_Hall_EventScript_ExpertM, 0
	object_event 5, OBJ_EVENT_GFX_TWIN, 0, 5, 2, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, DewfordTown_Hall_EventScript_Twin, 0
	object_event 6, OBJ_EVENT_GFX_LITTLE_BOY, 0, 14, 7, 0, MOVEMENT_TYPE_WANDER_LEFT_AND_RIGHT, 1, 0, TRAINER_TYPE_NONE, 0, DewfordTown_Hall_EventScript_LittleBoy, 0
	object_event 7, OBJ_EVENT_GFX_SCHOOL_KID_M, 0, 12, 3, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, DewfordTown_Hall_EventScript_SchoolKidM, 0
	object_event 8, OBJ_EVENT_GFX_PSYCHIC_M, 0, 15, 3, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, DewfordTown_Hall_EventScript_PsychicM, 0
	object_event 9, OBJ_EVENT_GFX_MANIAC, 0, 8, 6, 3, MOVEMENT_TYPE_WANDER_LEFT_AND_RIGHT, 1, 0, TRAINER_TYPE_NONE, 0, DewfordTown_Hall_EventScript_SludgeBombMan, FLAG_HIDE_DEWFORD_HALL_SLUDGE_BOMB_MAN

DewfordTown_Hall_MapWarps:
	warp_def 5, 8, 0, 0, MAP_DEWFORD_TOWN
	warp_def 6, 8, 0, 0, MAP_DEWFORD_TOWN

DewfordTown_Hall_MapBGEvents:
	bg_event 0, 1, 3, BG_EVENT_PLAYER_FACING_ANY, DewfordTown_Hall_EventScript_Bookshelf
	bg_event 7, 1, 3, BG_EVENT_PLAYER_FACING_ANY, DewfordTown_Hall_EventScript_Painting

DewfordTown_Hall_MapEvents::
	map_events DewfordTown_Hall_ObjectEvents, DewfordTown_Hall_MapWarps, 0x0, DewfordTown_Hall_MapBGEvents

