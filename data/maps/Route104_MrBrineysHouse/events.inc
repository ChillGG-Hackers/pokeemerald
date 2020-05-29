Route104_MrBrineysHouse_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_EXPERT_M, 0, 5, 3, 3, MOVEMENT_TYPE_WALK_SEQUENCE_DOWN_LEFT_UP_RIGHT, 3, 3, TRAINER_TYPE_NONE, 0, Route104_MrBrineysHouse_EventScript_Briney, FLAG_HIDE_BRINEYS_HOUSE_MR_BRINEY
	object_event 2, OBJ_EVENT_GFX_WINGULL, 0, 6, 3, 3, MOVEMENT_TYPE_FACE_DOWN, 3, 3, TRAINER_TYPE_NONE, 0, Route104_MrBrineysHouse_EventScript_Peeko, FLAG_HIDE_BRINEYS_HOUSE_PEEKO

Route104_MrBrineysHouse_MapWarps:
	warp_def 5, 8, 0, 0, MAP_ROUTE104
	warp_def 6, 8, 0, 0, MAP_ROUTE104

Route104_MrBrineysHouse_MapEvents::
	map_events Route104_MrBrineysHouse_ObjectEvents, Route104_MrBrineysHouse_MapWarps, 0x0, 0x0

