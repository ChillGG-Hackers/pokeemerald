BattleFrontier_BattlePikeRoomWildMons_MapCoordEvents:
	coord_event 4, 3, 3, VAR_TEMP_1, 0, BattleFrontier_BattlePikeRoomWildMons_EventScript_Exit
	coord_event 3, 18, 3, VAR_TEMP_2, 0, BattleFrontier_BattlePikeRoomWildMons_EventScript_SetEnteredRoom
	coord_event 4, 18, 3, VAR_TEMP_2, 0, BattleFrontier_BattlePikeRoomWildMons_EventScript_SetEnteredRoom
	coord_event 5, 18, 3, VAR_TEMP_2, 0, BattleFrontier_BattlePikeRoomWildMons_EventScript_SetEnteredRoom
	coord_event 3, 19, 3, VAR_TEMP_3, 1, BattleFrontier_BattlePikeRoomWildMons_EventScript_NoTurningBack
	coord_event 4, 19, 3, VAR_TEMP_3, 1, BattleFrontier_BattlePikeRoomWildMons_EventScript_NoTurningBack
	coord_event 5, 19, 3, VAR_TEMP_3, 1, BattleFrontier_BattlePikeRoomWildMons_EventScript_NoTurningBack

BattleFrontier_BattlePikeRoomWildMons_MapEvents::
	map_events 0x0, 0x0, BattleFrontier_BattlePikeRoomWildMons_MapCoordEvents, 0x0

