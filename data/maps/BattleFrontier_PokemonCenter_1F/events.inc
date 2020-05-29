BattleFrontier_PokemonCenter_1F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_NURSE, 0, 7, 2, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, BattleFrontier_PokemonCenter_1F_EventScript_Nurse, 0
	object_event 2, OBJ_EVENT_GFX_SCHOOL_KID_M, 0, 4, 5, 3, MOVEMENT_TYPE_FACE_LEFT_AND_RIGHT, 1, 0, TRAINER_TYPE_NONE, 0, BattleFrontier_PokemonCenter_1F_EventScript_SchoolKid, 0
	object_event 3, OBJ_EVENT_GFX_MAN_3, 0, 11, 4, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 0, TRAINER_TYPE_NONE, 0, BattleFrontier_PokemonCenter_1F_EventScript_Man, 0
	object_event 4, OBJ_EVENT_GFX_PICNICKER, 0, 2, 3, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 0, TRAINER_TYPE_NONE, 0, BattleFrontier_PokemonCenter_1F_EventScript_Picnicker, 0
	object_event 5, OBJ_EVENT_GFX_SKITTY, 0, 1, 3, 3, MOVEMENT_TYPE_FACE_RIGHT, 1, 0, TRAINER_TYPE_NONE, 0, BattleFrontier_PokemonCenter_1F_EventScript_Skitty, 0

BattleFrontier_PokemonCenter_1F_MapWarps:
	warp_def 7, 8, 3, 12, MAP_BATTLE_FRONTIER_OUTSIDE_EAST
	warp_def 6, 8, 3, 12, MAP_BATTLE_FRONTIER_OUTSIDE_EAST
	warp_def 1, 6, 4, 0, MAP_BATTLE_FRONTIER_POKEMON_CENTER_2F

BattleFrontier_PokemonCenter_1F_MapEvents::
	map_events BattleFrontier_PokemonCenter_1F_ObjectEvents, BattleFrontier_PokemonCenter_1F_MapWarps, 0x0, 0x0

