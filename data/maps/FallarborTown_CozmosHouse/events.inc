FallarborTown_CozmosHouse_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_SCIENTIST_1, 0, 6, 4, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, FallarborTown_CozmosHouse_EventScript_ProfCozmo, FLAG_HIDE_FALLARBOR_HOUSE_PROF_COZMO
	object_event 2, OBJ_EVENT_GFX_WOMAN_2, 0, 5, 6, 3, MOVEMENT_TYPE_WANDER_LEFT_AND_RIGHT, 1, 0, TRAINER_TYPE_NONE, 0, FallarborTown_CozmosHouse_EventScript_CozmosWife, 0

FallarborTown_CozmosHouse_MapWarps:
	warp_def 3, 8, 0, 3, MAP_FALLARBOR_TOWN
	warp_def 4, 8, 0, 3, MAP_FALLARBOR_TOWN

FallarborTown_CozmosHouse_MapEvents::
	map_events FallarborTown_CozmosHouse_ObjectEvents, FallarborTown_CozmosHouse_MapWarps, 0x0, 0x0

