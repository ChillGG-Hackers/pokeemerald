Route119_House_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_WOMAN_4, 0, 7, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, Route119_House_EventScript_Woman, 0
	object_event 2, OBJ_EVENT_GFX_WINGULL, 0, 1, 6, 3, MOVEMENT_TYPE_WANDER_AROUND, 2, 2, TRAINER_TYPE_NONE, 0, Route119_House_EventScript_Wingull, 0
	object_event 3, OBJ_EVENT_GFX_WINGULL, 0, 0, 4, 3, MOVEMENT_TYPE_WANDER_AROUND, 3, 1, TRAINER_TYPE_NONE, 0, Route119_House_EventScript_Wingull, 0
	object_event 4, OBJ_EVENT_GFX_WINGULL, 0, 2, 2, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, Route119_House_EventScript_Wingull, 0
	object_event 5, OBJ_EVENT_GFX_WINGULL, 0, 8, 5, 3, MOVEMENT_TYPE_WANDER_AROUND, 3, 2, TRAINER_TYPE_NONE, 0, Route119_House_EventScript_Wingull, 0
	object_event 6, OBJ_EVENT_GFX_WINGULL, 0, 6, 6, 3, MOVEMENT_TYPE_WANDER_AROUND, 2, 2, TRAINER_TYPE_NONE, 0, Route119_House_EventScript_Wingull, 0
	object_event 7, OBJ_EVENT_GFX_WINGULL, 0, 5, 3, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 3, TRAINER_TYPE_NONE, 0, Route119_House_EventScript_Wingull, 0

Route119_House_MapWarps:
	warp_def 3, 8, 0, 1, MAP_ROUTE119
	warp_def 4, 8, 0, 1, MAP_ROUTE119

Route119_House_MapEvents::
	map_events Route119_House_ObjectEvents, Route119_House_MapWarps, 0x0, 0x0

