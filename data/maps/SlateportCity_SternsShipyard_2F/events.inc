SlateportCity_SternsShipyard_2F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_SCIENTIST_1, 0, 10, 7, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, 0
	object_event 2, OBJ_EVENT_GFX_SCIENTIST_1, 0, 8, 4, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, SlateportCity_SternsShipyard_2F_EventScript_Scientist1, 0
	object_event 3, OBJ_EVENT_GFX_SCIENTIST_1, 0, 0, 9, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, SlateportCity_SternsShipyard_2F_EventScript_Scientist2, 0

SlateportCity_SternsShipyard_2F_MapWarps:
	warp_def 3, 1, 0, 2, MAP_SLATEPORT_CITY_STERNS_SHIPYARD_1F

SlateportCity_SternsShipyard_2F_MapEvents::
	map_events SlateportCity_SternsShipyard_2F_ObjectEvents, SlateportCity_SternsShipyard_2F_MapWarps, 0x0, 0x0

