TradeCenter_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_LINK_RECEPTIONIST, 0, 9, 6, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, TradeCenter_EventScript_Attendant, 0

TradeCenter_MapWarps:
	warp_def 5, 8, 3, 127, MAP_NONE
	warp_def 6, 8, 3, 127, MAP_NONE

TradeCenter_MapCoordEvents:
	coord_event 4, 5, 3, VAR_TEMP_0, 0, EventScript_TradeCenter_Chair0
	coord_event 7, 5, 3, VAR_TEMP_0, 0, EventScript_TradeCenter_Chair1

TradeCenter_MapEvents::
	map_events TradeCenter_ObjectEvents, TradeCenter_MapWarps, TradeCenter_MapCoordEvents, 0x0

