MeteorFalls_B1F_2R_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_ITEM_BALL, 0, 5, 3, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, MeteorFalls_B1F_2R_EventScript_ItemTM02, FLAG_ITEM_METEOR_FALLS_B1F_2R_TM_02

MeteorFalls_B1F_2R_MapWarps:
	warp_def 5, 15, 3, 3, MAP_METEOR_FALLS_B1F_1R

MeteorFalls_B1F_2R_MapEvents::
	map_events MeteorFalls_B1F_2R_ObjectEvents, MeteorFalls_B1F_2R_MapWarps, 0x0, 0x0

