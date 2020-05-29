SlateportCity_Harbor_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_BEAUTY, 0, 8, 10, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, SlateportCity_Harbor_EventScript_FerryAttendant, FLAG_HIDE_SLATEPORT_CITY_HARBOR_PATRONS
	object_event 2, OBJ_EVENT_GFX_SAILOR, 0, 4, 12, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, SlateportCity_Harbor_EventScript_Sailor, FLAG_HIDE_SLATEPORT_CITY_HARBOR_PATRONS
	object_event 3, OBJ_EVENT_GFX_FAT_MAN, 0, 1, 12, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, SlateportCity_Harbor_EventScript_FatMan, FLAG_HIDE_SLATEPORT_CITY_HARBOR_PATRONS
	object_event 4, OBJ_EVENT_GFX_SCIENTIST_1, 0, 6, 13, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, SlateportCity_Harbor_EventScript_CaptStern, FLAG_HIDE_SLATEPORT_CITY_HARBOR_CAPTAIN_STERN
	object_event 5, OBJ_EVENT_GFX_SS_TIDAL, 0, 8, 9, 1, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_HIDE_SLATEPORT_CITY_HARBOR_SS_TIDAL
	object_event 6, OBJ_EVENT_GFX_AQUA_MEMBER_M, 0, 7, 10, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_HIDE_SLATEPORT_CITY_HARBOR_AQUA_GRUNT
	object_event 7, OBJ_EVENT_GFX_ARCHIE, 0, 8, 10, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_HIDE_SLATEPORT_CITY_HARBOR_ARCHIE
	object_event 8, OBJ_EVENT_GFX_SUBMARINE_SHADOW, 0, 7, 9, 1, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_HIDE_SLATEPORT_CITY_HARBOR_SUBMARINE_SHADOW

SlateportCity_Harbor_MapWarps:
	warp_def 11, 14, 0, 8, MAP_SLATEPORT_CITY
	warp_def 12, 14, 0, 8, MAP_SLATEPORT_CITY
	warp_def 19, 15, 0, 9, MAP_SLATEPORT_CITY
	warp_def 20, 15, 0, 9, MAP_SLATEPORT_CITY

SlateportCity_Harbor_MapCoordEvents:
	coord_event 8, 11, 3, VAR_SLATEPORT_HARBOR_STATE, 1, SlateportCity_Harbor_EventScript_AquaEscapeTrigger0
	coord_event 8, 12, 3, VAR_SLATEPORT_HARBOR_STATE, 1, SlateportCity_Harbor_EventScript_AquaEscapeTrigger1
	coord_event 8, 13, 3, VAR_SLATEPORT_HARBOR_STATE, 1, SlateportCity_Harbor_EventScript_AquaEscapeTrigger2
	coord_event 8, 14, 3, VAR_SLATEPORT_HARBOR_STATE, 1, SlateportCity_Harbor_EventScript_AquaEscapeTrigger3

SlateportCity_Harbor_MapEvents::
	map_events SlateportCity_Harbor_ObjectEvents, SlateportCity_Harbor_MapWarps, SlateportCity_Harbor_MapCoordEvents, 0x0

