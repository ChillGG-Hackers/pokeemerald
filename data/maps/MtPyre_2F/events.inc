MtPyre_2F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MANIAC, 0, 3, 6, 3, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NORMAL, 2, MtPyre_2F_EventScript_Mark, 0
	object_event 2, OBJ_EVENT_GFX_ITEM_BALL, 0, 0, 10, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, MtPyre_2F_EventScript_ItemUltraBall, FLAG_ITEM_MT_PYRE_2F_ULTRA_BALL
	object_event 3, OBJ_EVENT_GFX_WOMAN_1, 0, 9, 3, 3, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NONE, 0, MtPyre_2F_EventScript_Woman, 0
	object_event 4, OBJ_EVENT_GFX_POKEFAN_M, 0, 12, 10, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, MtPyre_2F_EventScript_PokefanM, 0
	object_event 5, OBJ_EVENT_GFX_WOMAN_4, 0, 2, 9, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NORMAL, 1, MtPyre_2F_EventScript_Dez, 0
	object_event 6, OBJ_EVENT_GFX_MAN_4, 0, 3, 9, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NORMAL, 1, MtPyre_2F_EventScript_Luke, 0
	object_event 7, OBJ_EVENT_GFX_BLACK_BELT, 0, 6, 9, 3, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NORMAL, 2, MtPyre_2F_EventScript_Zander, 0
	object_event 8, OBJ_EVENT_GFX_HEX_MANIAC, 0, 6, 6, 3, MOVEMENT_TYPE_FACE_DOWN_AND_LEFT, 1, 1, TRAINER_TYPE_NORMAL, 2, MtPyre_2F_EventScript_Leah, 0

MtPyre_2F_MapWarps:
	warp_def 2, 1, 3, 4, MAP_MT_PYRE_1F
	warp_def 10, 1, 3, 0, MAP_MT_PYRE_3F
	warp_def 10, 12, 3, 4, MAP_MT_PYRE_3F
	warp_def 6, 12, 3, 5, MAP_MT_PYRE_3F
	warp_def 11, 9, 3, 5, MAP_MT_PYRE_1F

MtPyre_2F_MapEvents::
	map_events MtPyre_2F_ObjectEvents, MtPyre_2F_MapWarps, 0x0, 0x0

