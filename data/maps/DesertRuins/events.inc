DesertRuins_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_REGIROCK, 0, 8, 7, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, DesertRuins_EventScript_Regirock, FLAG_HIDE_REGIROCK

DesertRuins_MapWarps:
	warp_def 8, 29, 3, 1, MAP_ROUTE111
	warp_def 8, 20, 0, 2, MAP_DESERT_RUINS
	warp_def 8, 11, 3, 1, MAP_DESERT_RUINS

DesertRuins_MapBGEvents:
	bg_event 8, 20, 0, BG_EVENT_PLAYER_FACING_ANY, DesertRuins_EventScript_CaveEntranceMiddle
	bg_event 7, 20, 0, BG_EVENT_PLAYER_FACING_ANY, DesertRuins_EventScript_CaveEntranceSide
	bg_event 9, 20, 0, BG_EVENT_PLAYER_FACING_ANY, DesertRuins_EventScript_CaveEntranceSide

DesertRuins_MapEvents::
	map_events DesertRuins_ObjectEvents, DesertRuins_MapWarps, 0x0, DesertRuins_MapBGEvents

