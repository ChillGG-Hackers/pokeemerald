Route114_FossilManiacsTunnel_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MANIAC, 0, 5, 3, 3, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NONE, 0, Route114_FossilManiacsTunnel_EventScript_FossilManiac, 0

Route114_FossilManiacsTunnel_MapWarps:
	warp_def 6, 25, 3, 2, MAP_ROUTE114_FOSSIL_MANIACS_HOUSE
	warp_def 7, 25, 3, 2, MAP_ROUTE114_FOSSIL_MANIACS_HOUSE
	warp_def 6, 2, 0, 0, MAP_DESERT_UNDERPASS

Route114_FossilManiacsTunnel_MapCoordEvents:
	coord_event 5, 4, 3, VAR_FOSSIL_MANIAC_STATE, 1, Route114_FossilManiacsTunnel_EventScript_ManiacMentionCaveIn
	coord_event 6, 4, 3, VAR_FOSSIL_MANIAC_STATE, 1, Route114_FossilManiacsTunnel_EventScript_ManiacMentionCaveIn

Route114_FossilManiacsTunnel_MapEvents::
	map_events Route114_FossilManiacsTunnel_ObjectEvents, Route114_FossilManiacsTunnel_MapWarps, Route114_FossilManiacsTunnel_MapCoordEvents, 0x0

