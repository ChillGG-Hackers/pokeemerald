EverGrandeCity_GlaciasRoom_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_GLACIA, 0, 6, 5, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, EverGrandeCity_GlaciasRoom_EventScript_Glacia, 0

EverGrandeCity_GlaciasRoom_MapWarps:
	warp_def 6, 13, 3, 1, MAP_EVER_GRANDE_CITY_HALL2
	warp_def 6, 2, 0, 0, MAP_EVER_GRANDE_CITY_HALL3

EverGrandeCity_GlaciasRoom_MapEvents::
	map_events EverGrandeCity_GlaciasRoom_ObjectEvents, EverGrandeCity_GlaciasRoom_MapWarps, 0x0, 0x0

