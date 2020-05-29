JaggedPass_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_HIKER, 0, 10, 8, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NORMAL, 3, JaggedPass_EventScript_Eric, 0
	object_event 2, OBJ_EVENT_GFX_CAMPER, 0, 16, 35, 3, MOVEMENT_TYPE_FACE_LEFT_AND_RIGHT, 0, 0, TRAINER_TYPE_NORMAL, 4, JaggedPass_EventScript_Ethan, 0
	object_event 3, OBJ_EVENT_GFX_ITEM_BALL, 0, 23, 24, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, JaggedPass_EventScript_ItemBurnHeal, FLAG_ITEM_JAGGED_PASS_BURN_HEAL
	object_event 4, OBJ_EVENT_GFX_PICNICKER, 0, 9, 21, 3, MOVEMENT_TYPE_FACE_UP_AND_RIGHT, 1, 1, TRAINER_TYPE_NORMAL, 3, JaggedPass_EventScript_Diana, 0
	object_event 5, OBJ_EVENT_GFX_MAGMA_MEMBER_M, 0, 16, 19, 3, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NONE, 0, JaggedPass_EventScript_MagmaHideoutGuard, FLAG_HIDE_JAGGED_PASS_MAGMA_GUARD
	object_event 6, OBJ_EVENT_GFX_PICNICKER, 0, 14, 25, 3, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NORMAL, 3, JaggedPass_EventScript_Autumn, 0
	object_event 7, OBJ_EVENT_GFX_CYCLING_TRIATHLETE_M, 0, 18, 25, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NORMAL, 3, JaggedPass_EventScript_Julio, 0

JaggedPass_MapWarps:
	warp_def 14, 40, 3, 2, MAP_ROUTE112
	warp_def 15, 40, 3, 3, MAP_ROUTE112
	warp_def 13, 5, 3, 2, MAP_MT_CHIMNEY
	warp_def 14, 5, 3, 3, MAP_MT_CHIMNEY
	warp_def 16, 18, 0, 0, MAP_MAGMA_HIDEOUT_1F

JaggedPass_MapCoordEvents:
	coord_weather_event 13, 15, 3, COORD_EVENT_WEATHER_SUNNY
	coord_weather_event 21, 12, 3, COORD_EVENT_WEATHER_VOLCANIC_ASH
	coord_weather_event 14, 15, 3, COORD_EVENT_WEATHER_SUNNY
	coord_weather_event 18, 17, 3, COORD_EVENT_WEATHER_SUNNY
	coord_weather_event 22, 19, 3, COORD_EVENT_WEATHER_SUNNY
	coord_event 21, 15, 3, VAR_JAGGED_PASS_STATE, 1, JaggedPass_EventScript_OpenMagmaHideout
	coord_event 22, 20, 3, VAR_JAGGED_PASS_STATE, 1, JaggedPass_EventScript_OpenMagmaHideout
	coord_event 21, 20, 3, VAR_JAGGED_PASS_STATE, 1, JaggedPass_EventScript_OpenMagmaHideout
	coord_event 14, 15, 3, VAR_JAGGED_PASS_STATE, 1, JaggedPass_EventScript_OpenMagmaHideout
	coord_event 13, 15, 3, VAR_JAGGED_PASS_STATE, 1, JaggedPass_EventScript_OpenMagmaHideout

JaggedPass_MapBGEvents:
	bg_hidden_item_event 8, 10, 3, ITEM_FULL_HEAL, FLAG_HIDDEN_ITEM_JAGGED_PASS_FULL_HEAL
	bg_hidden_item_event 7, 29, 3, ITEM_GREAT_BALL, FLAG_HIDDEN_ITEM_JAGGED_PASS_GREAT_BALL

JaggedPass_MapEvents::
	map_events JaggedPass_ObjectEvents, JaggedPass_MapWarps, JaggedPass_MapCoordEvents, JaggedPass_MapBGEvents

