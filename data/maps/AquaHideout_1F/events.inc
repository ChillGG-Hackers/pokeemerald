AquaHideout_1F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_AQUA_MEMBER_M, 0, 13, 11, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, AquaHideout_1F_EventScript_HideoutEntranceGrunt1, FLAG_HIDE_AQUA_HIDEOUT_1F_GRUNT_1_BLOCKING_ENTRANCE
	object_event 2, OBJ_EVENT_GFX_AQUA_MEMBER_M, 0, 14, 11, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, AquaHideout_1F_EventScript_HideoutEntranceGrunt2, FLAG_HIDE_AQUA_HIDEOUT_1F_GRUNT_2_BLOCKING_ENTRANCE
	object_event 3, OBJ_EVENT_GFX_AQUA_MEMBER_M, 0, 20, 4, 3, MOVEMENT_TYPE_WALK_SEQUENCE_DOWN_LEFT_UP_RIGHT, 13, 5, TRAINER_TYPE_NORMAL, 3, AquaHideout_1F_EventScript_Grunt1, FLAG_HIDE_AQUA_HIDEOUT_GRUNTS

AquaHideout_1F_MapWarps:
	warp_def 13, 27, 1, 6, MAP_LILYCOVE_CITY
	warp_def 14, 27, 1, 6, MAP_LILYCOVE_CITY
	warp_def 22, 1, 3, 0, MAP_AQUA_HIDEOUT_B1F

AquaHideout_1F_MapEvents::
	map_events AquaHideout_1F_ObjectEvents, AquaHideout_1F_MapWarps, 0x0, 0x0

