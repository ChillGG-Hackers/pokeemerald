SlateportCity_PokemonFanClub_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_MAN_1, 0, 11, 4, 0, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, SlateportCity_PokemonFanClub_EventScript_Man, 0
	object_event 2, OBJ_EVENT_GFX_TWIN, 0, 1, 5, 0, MOVEMENT_TYPE_WANDER_UP_AND_DOWN, 0, 1, TRAINER_TYPE_NONE, 0, SlateportCity_PokemonFanClub_EventScript_Twin, 0
	object_event 3, OBJ_EVENT_GFX_REPORTER_F, 0, 11, 5, 0, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, SlateportCity_PokemonFanClub_EventScript_Reporter, 0
	object_event 4, OBJ_EVENT_GFX_WOMAN_4, 0, 6, 2, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, SlateportCity_PokemonFanClub_EventScript_SootheBellWoman, 0
	object_event 5, OBJ_EVENT_GFX_GENTLEMAN, 0, 6, 5, 4, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, SlateportCity_PokemonFanClub_EventScript_Chairman, 0
	object_event 6, OBJ_EVENT_GFX_ZIGZAGOON_2, 0, 3, 9, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, SlateportCity_PokemonFanClub_EventScript_Zigzagoon, 0
	object_event 7, OBJ_EVENT_GFX_SKITTY, 0, 8, 3, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, SlateportCity_PokemonFanClub_EventScript_Skitty, 0
	object_event 8, OBJ_EVENT_GFX_AZUMARILL, 0, 10, 8, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, SlateportCity_PokemonFanClub_EventScript_Azumarill, 0
	object_event 9, OBJ_EVENT_GFX_MAN_4, 0, 11, 8, 0, MOVEMENT_TYPE_FACE_LEFT, 0, 1, TRAINER_TYPE_NONE, 0, SlateportCity_PokemonFanClub_EventScript_SwaggerTutor, 0

SlateportCity_PokemonFanClub_MapWarps:
	warp_def 6, 10, 0, 4, MAP_SLATEPORT_CITY
	warp_def 7, 10, 0, 4, MAP_SLATEPORT_CITY

SlateportCity_PokemonFanClub_MapEvents::
	map_events SlateportCity_PokemonFanClub_ObjectEvents, SlateportCity_PokemonFanClub_MapWarps, 0x0, 0x0

