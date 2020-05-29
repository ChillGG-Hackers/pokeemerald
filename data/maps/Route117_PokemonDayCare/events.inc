Route117_PokemonDayCare_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_OLD_WOMAN, 0, 2, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, Route117_PokemonDayCare_EventScript_DaycareWoman, 0

Route117_PokemonDayCare_MapWarps:
	warp_def 2, 8, 0, 0, MAP_ROUTE117
	warp_def 3, 8, 0, 0, MAP_ROUTE117

Route117_PokemonDayCare_MapEvents::
	map_events Route117_PokemonDayCare_ObjectEvents, Route117_PokemonDayCare_MapWarps, 0x0, 0x0

