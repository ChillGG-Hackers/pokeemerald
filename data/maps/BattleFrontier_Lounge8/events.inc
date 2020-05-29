BattleFrontier_Lounge8_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_NINJA_BOY, 0, 4, 5, 0, MOVEMENT_TYPE_WANDER_AROUND, 2, 2, TRAINER_TYPE_NONE, 0, BattleFrontier_Lounge8_EventScript_NinjaBoy, 0
	object_event 2, OBJ_EVENT_GFX_MAN_3, 0, 8, 7, 0, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_Lounge8_EventScript_Man, 0
	object_event 3, OBJ_EVENT_GFX_WOMAN_5, 0, 8, 4, 0, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NONE, 0, BattleFrontier_Lounge8_EventScript_Woman, 0

BattleFrontier_Lounge8_MapWarps:
	warp_def 4, 9, 0, 10, MAP_BATTLE_FRONTIER_OUTSIDE_EAST

BattleFrontier_Lounge8_MapEvents::
	map_events BattleFrontier_Lounge8_ObjectEvents, BattleFrontier_Lounge8_MapWarps, 0x0, 0x0

