RustboroCity_PokemonSchool_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_GAMEBOY_KID, 0, 8, 6, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, RustboroCity_PokemonSchool_EventScript_GameboyKid1, 0
	object_event 2, OBJ_EVENT_GFX_GAMEBOY_KID, 0, 9, 6, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, RustboroCity_PokemonSchool_EventScript_GameboyKid2, 0
	object_event 3, OBJ_EVENT_GFX_RICH_BOY, 0, 3, 8, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, RustboroCity_PokemonSchool_EventScript_RichBoy, 0
	object_event 4, OBJ_EVENT_GFX_LASS, 0, 10, 8, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, RustboroCity_PokemonSchool_EventScript_Lass, 0
	object_event 5, OBJ_EVENT_GFX_SCHOOL_KID_M, 0, 3, 6, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, RustboroCity_PokemonSchool_EventScript_SchoolKidM, 0
	object_event 6, OBJ_EVENT_GFX_GENTLEMAN, 0, 5, 3, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, RustboroCity_PokemonSchool_EventScript_Teacher, 0
	object_event 7, OBJ_EVENT_GFX_SCOTT, 0, 0, 10, 0, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NONE, 0, RustboroCity_PokemonSchool_EventScript_Scott, FLAG_HIDE_RUSTBORO_CITY_POKEMON_SCHOOL_SCOTT

RustboroCity_PokemonSchool_MapWarps:
	warp_def 5, 10, 0, 4, MAP_RUSTBORO_CITY
	warp_def 6, 10, 0, 4, MAP_RUSTBORO_CITY

RustboroCity_PokemonSchool_MapBGEvents:
	bg_event 5, 2, 0, BG_EVENT_PLAYER_FACING_ANY, RustboroCity_PokemonSchool_EventScript_Blackboard
	bg_event 4, 2, 0, BG_EVENT_PLAYER_FACING_ANY, RustboroCity_PokemonSchool_EventScript_Blackboard
	bg_event 6, 2, 0, BG_EVENT_PLAYER_FACING_ANY, RustboroCity_PokemonSchool_EventScript_Blackboard
	bg_event 7, 2, 0, BG_EVENT_PLAYER_FACING_ANY, RustboroCity_PokemonSchool_EventScript_Blackboard
	bg_event 3, 5, 0, BG_EVENT_PLAYER_FACING_ANY, RustboroCity_PokemonSchool_EventScript_StudentNotebook

RustboroCity_PokemonSchool_MapEvents::
	map_events RustboroCity_PokemonSchool_ObjectEvents, RustboroCity_PokemonSchool_MapWarps, 0x0, RustboroCity_PokemonSchool_MapBGEvents

