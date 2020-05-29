SlateportCity_OceanicMuseum_1F_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_BEAUTY, 0, 7, 7, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, SlateportCity_OceanicMuseum_1F_EventScript_EntranceAttendant, 0
	object_event 2, OBJ_EVENT_GFX_AQUA_MEMBER_M, 0, 18, 5, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, SlateportCity_OceanicMuseum_1F_EventScript_MuseumGrunt3, FLAG_HIDE_SLATEPORT_CITY_OCEANIC_MUSEUM_AQUA_GRUNTS
	object_event 3, OBJ_EVENT_GFX_AQUA_MEMBER_M, 0, 12, 2, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, SlateportCity_OceanicMuseum_1F_EventScript_MuseumGrunt4, FLAG_HIDE_SLATEPORT_CITY_OCEANIC_MUSEUM_AQUA_GRUNTS
	object_event 4, OBJ_EVENT_GFX_AQUA_MEMBER_M, 0, 2, 8, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, SlateportCity_OceanicMuseum_1F_EventScript_MuseumGrunt2, FLAG_HIDE_SLATEPORT_CITY_OCEANIC_MUSEUM_AQUA_GRUNTS
	object_event 5, OBJ_EVENT_GFX_AQUA_MEMBER_F, 0, 3, 4, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, SlateportCity_OceanicMuseum_1F_EventScript_MuseumGrunt1, FLAG_HIDE_SLATEPORT_CITY_OCEANIC_MUSEUM_AQUA_GRUNTS
	object_event 6, OBJ_EVENT_GFX_AQUA_MEMBER_M, 0, 14, 4, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, SlateportCity_OceanicMuseum_1F_EventScript_MuseumGrunt5, FLAG_HIDE_SLATEPORT_CITY_OCEANIC_MUSEUM_AQUA_GRUNTS
	object_event 7, OBJ_EVENT_GFX_BEAUTY, 0, 12, 7, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, SlateportCity_OceanicMuseum_1F_EventScript_EntranceAttendant, 0
	object_event 8, OBJ_EVENT_GFX_AQUA_MEMBER_M, 0, 8, 3, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, SlateportCity_OceanicMuseum_1F_EventScript_MuseumGrunt6, FLAG_HIDE_SLATEPORT_CITY_OCEANIC_MUSEUM_AQUA_GRUNTS
	object_event 9, OBJ_EVENT_GFX_WOMAN_5, 0, 4, 2, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, SlateportCity_OceanicMuseum_1F_EventScript_MuseumPatron1, FLAG_HIDE_SLATEPORT_MUSEUM_POPULATION
	object_event 10, OBJ_EVENT_GFX_MANIAC, 0, 10, 2, 3, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NONE, 0, SlateportCity_OceanicMuseum_1F_EventScript_MuseumPatron2, FLAG_HIDE_SLATEPORT_MUSEUM_POPULATION
	object_event 11, OBJ_EVENT_GFX_POKEFAN_M, 0, 17, 7, 3, MOVEMENT_TYPE_FACE_RIGHT, 1, 1, TRAINER_TYPE_NONE, 0, SlateportCity_OceanicMuseum_1F_EventScript_MuseumPatron3, FLAG_HIDE_SLATEPORT_MUSEUM_POPULATION
	object_event 12, OBJ_EVENT_GFX_LITTLE_GIRL, 0, 18, 8, 3, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NONE, 0, SlateportCity_OceanicMuseum_1F_EventScript_MuseumPatron4, FLAG_HIDE_SLATEPORT_MUSEUM_POPULATION
	object_event 13, OBJ_EVENT_GFX_AQUA_MEMBER_M, 0, 9, 4, 3, MOVEMENT_TYPE_FACE_UP_LEFT_AND_RIGHT, 1, 1, TRAINER_TYPE_NONE, 0, SlateportCity_OceanicMuseum_1F_EventScript_FamiliarGrunt, FLAG_HIDE_SLATEPORT_CITY_OCEANIC_MUSEUM_FAMILIAR_AQUA_GRUNT
	object_event 14, OBJ_EVENT_GFX_REPORTER_M, 0, 7, 4, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, SlateportCity_OceanicMuseum_1F_EventScript_Reporter, FLAG_HIDE_SLATEPORT_MUSEUM_POPULATION

SlateportCity_OceanicMuseum_1F_MapWarps:
	warp_def 9, 8, 0, 5, MAP_SLATEPORT_CITY
	warp_def 10, 8, 0, 7, MAP_SLATEPORT_CITY
	warp_def 6, 1, 0, 0, MAP_SLATEPORT_CITY_OCEANIC_MUSEUM_2F

SlateportCity_OceanicMuseum_1F_MapCoordEvents:
	coord_event 9, 7, 3, VAR_SLATEPORT_MUSEUM_1F_STATE, 0, SlateportCity_OceanicMuseum_1F_EventScript_PayEntranceFeeLeft
	coord_event 10, 7, 3, VAR_SLATEPORT_MUSEUM_1F_STATE, 0, SlateportCity_OceanicMuseum_1F_EventScript_PayEntranceFeeRight

SlateportCity_OceanicMuseum_1F_MapBGEvents:
	bg_event 2, 7, 0, BG_EVENT_PLAYER_FACING_ANY, SlateportCity_OceanicMuseum_1F_EventScript_WhirlpoolExperiment
	bg_event 2, 4, 0, BG_EVENT_PLAYER_FACING_ANY, SlateportCity_OceanicMuseum_1F_EventScript_WaterfallExperiment
	bg_event 9, 1, 0, BG_EVENT_PLAYER_FACING_ANY, SlateportCity_OceanicMuseum_1F_EventScript_OceanSoilDisplay
	bg_event 12, 1, 0, BG_EVENT_PLAYER_FACING_ANY, SlateportCity_OceanicMuseum_1F_EventScript_BeachSandDisplay
	bg_event 10, 1, 0, BG_EVENT_PLAYER_FACING_ANY, SlateportCity_OceanicMuseum_1F_EventScript_OceanSoilDisplay
	bg_event 13, 1, 0, BG_EVENT_PLAYER_FACING_ANY, SlateportCity_OceanicMuseum_1F_EventScript_BeachSandDisplay
	bg_event 15, 4, 0, BG_EVENT_PLAYER_FACING_ANY, SlateportCity_OceanicMuseum_1F_EventScript_OceanicMinifact1
	bg_event 18, 4, 0, BG_EVENT_PLAYER_FACING_ANY, SlateportCity_OceanicMuseum_1F_EventScript_OceanicMinifact2
	bg_event 18, 7, 0, BG_EVENT_PLAYER_FACING_ANY, SlateportCity_OceanicMuseum_1F_EventScript_OceanicMinifact3
	bg_event 2, 1, 0, BG_EVENT_PLAYER_FACING_ANY, SlateportCity_OceanicMuseum_1F_EventScript_FossilDisplay
	bg_event 3, 1, 0, BG_EVENT_PLAYER_FACING_ANY, SlateportCity_OceanicMuseum_1F_EventScript_FossilDisplay
	bg_event 16, 1, 0, BG_EVENT_PLAYER_FACING_ANY, SlateportCity_OceanicMuseum_1F_EventScript_DepthMeasuringMachine
	bg_event 17, 1, 0, BG_EVENT_PLAYER_FACING_ANY, SlateportCity_OceanicMuseum_1F_EventScript_DepthMeasuringMachine

SlateportCity_OceanicMuseum_1F_MapEvents::
	map_events SlateportCity_OceanicMuseum_1F_ObjectEvents, SlateportCity_OceanicMuseum_1F_MapWarps, SlateportCity_OceanicMuseum_1F_MapCoordEvents, SlateportCity_OceanicMuseum_1F_MapBGEvents

