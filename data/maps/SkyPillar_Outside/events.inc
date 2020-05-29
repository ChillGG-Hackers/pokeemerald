SkyPillar_Outside_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_WALLACE, 0, 13, 7, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, SkyPillar_Outside_EventScript_Wallace, FLAG_HIDE_SKY_PILLAR_WALLACE

SkyPillar_Outside_MapWarps:
	warp_def 17, 13, 3, 1, MAP_SKY_PILLAR_ENTRANCE
	warp_def 14, 5, 0, 0, MAP_SKY_PILLAR_1F

SkyPillar_Outside_MapEvents::
	map_events SkyPillar_Outside_ObjectEvents, SkyPillar_Outside_MapWarps, 0x0, 0x0

