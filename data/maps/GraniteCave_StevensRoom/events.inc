GraniteCave_StevensRoom_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_STEVEN, 0, 7, 8, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, GraniteCave_StevensRoom_EventScript_Steven, FLAG_HIDE_GRANITE_CAVE_STEVEN

GraniteCave_StevensRoom_MapWarps:
	warp_def 7, 3, 3, 3, MAP_GRANITE_CAVE_1F

GraniteCave_StevensRoom_MapEvents::
	map_events GraniteCave_StevensRoom_ObjectEvents, GraniteCave_StevensRoom_MapWarps, 0x0, 0x0

