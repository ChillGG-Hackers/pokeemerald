EverGrandeCity_PhoebesRoom_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_PHOEBE, 0, 6, 5, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, EverGrandeCity_PhoebesRoom_EventScript_Phoebe, 0

EverGrandeCity_PhoebesRoom_MapWarps:
	warp_def 6, 13, 3, 1, MAP_EVER_GRANDE_CITY_HALL1
	warp_def 6, 2, 0, 0, MAP_EVER_GRANDE_CITY_HALL2

EverGrandeCity_PhoebesRoom_MapEvents::
	map_events EverGrandeCity_PhoebesRoom_ObjectEvents, EverGrandeCity_PhoebesRoom_MapWarps, 0x0, 0x0

