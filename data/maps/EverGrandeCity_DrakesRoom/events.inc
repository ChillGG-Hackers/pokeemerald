EverGrandeCity_DrakesRoom_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_DRAKE, 0, 6, 5, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, EverGrandeCity_DrakesRoom_EventScript_Drake, 0

EverGrandeCity_DrakesRoom_MapWarps:
	warp_def 6, 13, 3, 1, MAP_EVER_GRANDE_CITY_HALL3
	warp_def 6, 2, 0, 0, MAP_EVER_GRANDE_CITY_HALL4

EverGrandeCity_DrakesRoom_MapEvents::
	map_events EverGrandeCity_DrakesRoom_ObjectEvents, EverGrandeCity_DrakesRoom_MapWarps, 0x0, 0x0

