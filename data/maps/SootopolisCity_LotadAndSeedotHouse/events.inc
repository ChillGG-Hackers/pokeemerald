SootopolisCity_LotadAndSeedotHouse_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_FISHERMAN, 0, 2, 4, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, SootopolisCity_LotadAndSeedotHouse_EventScript_LotadBrother, 0
	object_event 2, OBJ_EVENT_GFX_HIKER, 0, 5, 4, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, SootopolisCity_LotadAndSeedotHouse_EventScript_SeedotBrother, 0

SootopolisCity_LotadAndSeedotHouse_MapWarps:
	warp_def 3, 6, 0, 11, MAP_SOOTOPOLIS_CITY
	warp_def 4, 6, 0, 11, MAP_SOOTOPOLIS_CITY

SootopolisCity_LotadAndSeedotHouse_MapBGEvents:
	bg_event 5, 1, 0, BG_EVENT_PLAYER_FACING_ANY, SootopolisCity_LotadAndSeedotHouse_EventScript_SeedotSizeRecord
	bg_event 2, 1, 0, BG_EVENT_PLAYER_FACING_ANY, SootopolisCity_LotadAndSeedotHouse_EventScript_LotadSizeRecord

SootopolisCity_LotadAndSeedotHouse_MapEvents::
	map_events SootopolisCity_LotadAndSeedotHouse_ObjectEvents, SootopolisCity_LotadAndSeedotHouse_MapWarps, 0x0, SootopolisCity_LotadAndSeedotHouse_MapBGEvents

