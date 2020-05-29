BattleFrontier_BattlePikeRoomNormal_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_VAR_0, 0, 4, 4, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattlePikeRoomNormal_EventScript_NPC, 0
	object_event 2, OBJ_EVENT_GFX_VAR_1, 0, 3, 4, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_BattlePikeRoomNormal_EventScript_StatusMon, 0

BattleFrontier_BattlePikeRoomNormal_MapCoordEvents:
	coord_event 4, 3, 3, VAR_TEMP_1, 0, BattleFrontier_BattlePikeRoomNormal_EventScript_Exit
	coord_event 3, 6, 3, VAR_TEMP_2, 0, BattleFrontier_BattlePikeRoomNormal_EventScript_SetEnteredRoom
	coord_event 3, 7, 3, VAR_TEMP_3, 1, BattleFrontier_BattlePikeRoomNormal_EventScript_NoTurningBack
	coord_event 4, 6, 3, VAR_TEMP_2, 0, BattleFrontier_BattlePikeRoomNormal_EventScript_SetEnteredRoom
	coord_event 5, 6, 3, VAR_TEMP_2, 0, BattleFrontier_BattlePikeRoomNormal_EventScript_SetEnteredRoom
	coord_event 4, 7, 3, VAR_TEMP_3, 1, BattleFrontier_BattlePikeRoomNormal_EventScript_NoTurningBack
	coord_event 5, 7, 3, VAR_TEMP_3, 1, BattleFrontier_BattlePikeRoomNormal_EventScript_NoTurningBack

BattleFrontier_BattlePikeRoomNormal_MapEvents::
	map_events BattleFrontier_BattlePikeRoomNormal_ObjectEvents, 0x0, BattleFrontier_BattlePikeRoomNormal_MapCoordEvents, 0x0

