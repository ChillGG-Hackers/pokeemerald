Route113_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_NINJA_BOY, 0, 66, 12, 3, MOVEMENT_TYPE_WANDER_LEFT_AND_RIGHT, 1, 0, TRAINER_TYPE_NONE, 0, Route113_EventScript_NinjaBoy, 0
	object_event 2, OBJ_EVENT_GFX_GENTLEMAN, 0, 36, 10, 3, MOVEMENT_TYPE_WANDER_UP_AND_DOWN, 0, 1, TRAINER_TYPE_NONE, 0, Route113_EventScript_Gentleman, 0
	object_event 3, OBJ_EVENT_GFX_YOUNGSTER, 0, 62, 8, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NORMAL, 3, Route113_EventScript_Jaylen, 0
	object_event 4, OBJ_EVENT_GFX_YOUNGSTER, 0, 21, 11, 3, MOVEMENT_TYPE_FACE_DOWN_AND_LEFT, 0, 0, TRAINER_TYPE_NORMAL, 3, Route113_EventScript_Dillon, 0
	object_event 5, OBJ_EVENT_GFX_WOMAN_5, 0, 51, 11, 3, MOVEMENT_TYPE_ROTATE_COUNTERCLOCKWISE, 0, 0, TRAINER_TYPE_NORMAL, 2, Route113_EventScript_Madeline, 0
	object_event 6, OBJ_EVENT_GFX_ITEM_BALL, 0, 53, 7, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, Route113_EventScript_ItemMaxEther, FLAG_ITEM_ROUTE_113_MAX_ETHER
	object_event 7, OBJ_EVENT_GFX_ITEM_BALL, 0, 79, 5, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, Route113_EventScript_ItemSuperRepel, FLAG_ITEM_ROUTE_113_SUPER_REPEL
	object_event 8, OBJ_EVENT_GFX_NINJA_BOY, 0, 29, 6, 3, MOVEMENT_TYPE_HIDDEN, 0, 0, TRAINER_TYPE_BURIED, 1, Route113_EventScript_Lao, 0
	object_event 9, OBJ_EVENT_GFX_NINJA_BOY, 0, 71, 2, 3, MOVEMENT_TYPE_HIDDEN, 0, 0, TRAINER_TYPE_BURIED, 1, Route113_EventScript_Lung, 0
	object_event 10, OBJ_EVENT_GFX_TWIN, 0, 45, 6, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NORMAL, 1, Route113_EventScript_Tori, 0
	object_event 11, OBJ_EVENT_GFX_TWIN, 0, 46, 6, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NORMAL, 1, Route113_EventScript_Tia, 0
	object_event 12, OBJ_EVENT_GFX_ITEM_BALL, 0, 15, 15, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, Route113_EventScript_ItemHyperPotion, FLAG_ITEM_ROUTE_113_HYPER_POTION
	object_event 13, OBJ_EVENT_GFX_MANIAC, 0, 75, 3, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NORMAL, 4, Route113_EventScript_Wyatt, 0
	object_event 14, OBJ_EVENT_GFX_CAMPER, 0, 71, 4, 3, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NORMAL, 1, Route113_EventScript_Lawrence, 0
	object_event 15, OBJ_EVENT_GFX_PICNICKER, 0, 7, 6, 3, MOVEMENT_TYPE_WALK_DOWN_AND_UP, 1, 3, TRAINER_TYPE_NORMAL, 6, Route113_EventScript_Sophie, 0
	object_event 16, OBJ_EVENT_GFX_MAN_5, 0, 7, 13, 3, MOVEMENT_TYPE_WALK_UP_AND_DOWN, 1, 3, TRAINER_TYPE_NORMAL, 6, Route113_EventScript_Coby, 0

Route113_MapWarps:
	warp_def 33, 5, 0, 0, MAP_ROUTE113_GLASS_WORKSHOP
	warp_def 41, 12, 0, 0, MAP_TERRA_CAVE_ENTRANCE
	warp_def 88, 5, 0, 0, MAP_TERRA_CAVE_ENTRANCE

Route113_MapCoordEvents:
	coord_weather_event 19, 11, 3, COORD_EVENT_WEATHER_VOLCANIC_ASH
	coord_weather_event 19, 10, 3, COORD_EVENT_WEATHER_VOLCANIC_ASH
	coord_weather_event 19, 12, 3, COORD_EVENT_WEATHER_VOLCANIC_ASH
	coord_weather_event 19, 13, 3, COORD_EVENT_WEATHER_VOLCANIC_ASH
	coord_weather_event 86, 9, 3, COORD_EVENT_WEATHER_VOLCANIC_ASH
	coord_weather_event 85, 10, 3, COORD_EVENT_WEATHER_VOLCANIC_ASH
	coord_weather_event 85, 11, 3, COORD_EVENT_WEATHER_VOLCANIC_ASH
	coord_weather_event 14, 10, 3, COORD_EVENT_WEATHER_SUNNY
	coord_weather_event 14, 11, 3, COORD_EVENT_WEATHER_SUNNY
	coord_weather_event 14, 12, 3, COORD_EVENT_WEATHER_SUNNY
	coord_weather_event 14, 13, 3, COORD_EVENT_WEATHER_SUNNY
	coord_weather_event 94, 8, 3, COORD_EVENT_WEATHER_SUNNY
	coord_weather_event 94, 9, 3, COORD_EVENT_WEATHER_SUNNY
	coord_weather_event 94, 10, 3, COORD_EVENT_WEATHER_SUNNY
	coord_weather_event 94, 11, 0, COORD_EVENT_WEATHER_SUNNY
	coord_weather_event 19, 14, 3, COORD_EVENT_WEATHER_VOLCANIC_ASH
	coord_weather_event 87, 8, 3, COORD_EVENT_WEATHER_VOLCANIC_ASH
	coord_weather_event 87, 6, 3, COORD_EVENT_WEATHER_VOLCANIC_ASH
	coord_weather_event 87, 7, 3, COORD_EVENT_WEATHER_VOLCANIC_ASH

Route113_MapBGEvents:
	bg_event 85, 6, 0, BG_EVENT_PLAYER_FACING_ANY, Route113_EventScript_RouteSign111
	bg_event 12, 9, 0, BG_EVENT_PLAYER_FACING_ANY, Route113_EventScript_RouteSignFallarbor
	bg_event 58, 4, 3, BG_EVENT_PLAYER_FACING_ANY, Route113_EventScript_TrainerTipsRegisterKeyItems
	bg_event 31, 5, 0, BG_EVENT_PLAYER_FACING_ANY, Route113_EventScript_GlassWorkshopSign
	bg_secret_base_event 49, 8, 3, SECRET_BASE_RED_CAVE1_3
	bg_hidden_item_event 66, 3, 3, ITEM_ETHER, FLAG_HIDDEN_ITEM_ROUTE_113_ETHER
	bg_hidden_item_event 22, 5, 3, ITEM_TM32, FLAG_HIDDEN_ITEM_ROUTE_113_TM_32
	bg_hidden_item_event 73, 3, 3, ITEM_NUGGET, FLAG_HIDDEN_ITEM_ROUTE_113_NUGGET

Route113_MapEvents::
	map_events Route113_ObjectEvents, Route113_MapWarps, Route113_MapCoordEvents, Route113_MapBGEvents

