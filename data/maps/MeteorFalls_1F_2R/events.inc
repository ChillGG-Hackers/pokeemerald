MeteorFalls_1F_2R_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MAN_3, 0, 13, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NORMAL, 1, MeteorFalls_1F_2R_EventScript_Nicolas, 0
	object_event 2, OBJ_EVENT_GFX_EXPERT_M, 0, 6, 12, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NORMAL, 1, MeteorFalls_1F_2R_EventScript_John, 0
	object_event 3, OBJ_EVENT_GFX_EXPERT_F, 0, 7, 12, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NORMAL, 1, MeteorFalls_1F_2R_EventScript_Jay, 0

MeteorFalls_1F_2R_MapWarps:
	warp_def 10, 29, 3, 2, MAP_METEOR_FALLS_1F_1R
	warp_def 4, 14, 3, 0, MAP_METEOR_FALLS_B1F_1R
	warp_def 7, 20, 3, 1, MAP_METEOR_FALLS_B1F_1R
	warp_def 21, 23, 3, 2, MAP_METEOR_FALLS_B1F_1R

MeteorFalls_1F_2R_MapBGEvents:
	bg_event 9, 58, 0, BG_EVENT_PLAYER_FACING_ANY, 0x0

MeteorFalls_1F_2R_MapEvents::
	map_events MeteorFalls_1F_2R_ObjectEvents, MeteorFalls_1F_2R_MapWarps, 0x0, MeteorFalls_1F_2R_MapBGEvents

