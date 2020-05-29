Route116_TunnelersRestHouse_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_POKEFAN_M, 0, 6, 5, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, Route116_TunnelersRestHouse_EventScript_Tunneler1, 0
	object_event 2, OBJ_EVENT_GFX_POKEFAN_M, 0, 3, 6, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, Route116_TunnelersRestHouse_EventScript_Tunneler3, 0
	object_event 3, OBJ_EVENT_GFX_POKEFAN_M, 0, 7, 2, 3, MOVEMENT_TYPE_FACE_UP, 1, 0, TRAINER_TYPE_NONE, 0, Route116_TunnelersRestHouse_EventScript_Tunneler2, 0

Route116_TunnelersRestHouse_MapWarps:
	warp_def 4, 8, 0, 1, MAP_ROUTE116
	warp_def 5, 8, 0, 1, MAP_ROUTE116

Route116_TunnelersRestHouse_MapEvents::
	map_events Route116_TunnelersRestHouse_ObjectEvents, Route116_TunnelersRestHouse_MapWarps, 0x0, 0x0

