BattleFrontier_BattlePikeThreePathRoom_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_LINK_RECEPTIONIST, 0, 4, 10, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, BattleFrontier_BattlePikeThreePathRoom_EventScript_Attendant, 0
	object_event 2, OBJ_EVENT_GFX_LINK_RECEPTIONIST, 0, 8, 5, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, BattleFrontier_BattlePikeThreePathRoom_EventScript_HintGiver, 0

BattleFrontier_BattlePikeThreePathRoom_MapCoordEvents:
	coord_event 2, 3, 3, VAR_TEMP_1, 0, BattleFrontier_BattlePikeThreePathRoom_EventScript_LeftRoomWarp
	coord_event 6, 3, 3, VAR_TEMP_1, 0, BattleFrontier_BattlePikeThreePathRoom_EventScript_CenterRoomWarp
	coord_event 10, 3, 3, VAR_TEMP_1, 0, BattleFrontier_BattlePikeThreePathRoom_EventScript_RightRoomWarp
	coord_event 5, 10, 0, VAR_TEMP_3, 1, BattleFrontier_BattlePikeThreePathRoom_EventScript_NoTurningBack
	coord_event 6, 10, 0, VAR_TEMP_3, 1, BattleFrontier_BattlePikeThreePathRoom_EventScript_NoTurningBack
	coord_event 6, 9, 3, VAR_TEMP_2, 0, BattleFrontier_BattlePikeThreePathRoom_EventScript_SetEnteredRoom
	coord_event 5, 9, 3, VAR_TEMP_2, 0, BattleFrontier_BattlePikeThreePathRoom_EventScript_SetEnteredRoom
	coord_event 7, 9, 3, VAR_TEMP_2, 0, BattleFrontier_BattlePikeThreePathRoom_EventScript_SetEnteredRoom
	coord_event 7, 10, 0, VAR_TEMP_3, 1, BattleFrontier_BattlePikeThreePathRoom_EventScript_NoTurningBack

BattleFrontier_BattlePikeThreePathRoom_MapEvents::
	map_events BattleFrontier_BattlePikeThreePathRoom_ObjectEvents, 0x0, BattleFrontier_BattlePikeThreePathRoom_MapCoordEvents, 0x0

