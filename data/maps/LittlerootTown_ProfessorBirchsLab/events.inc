LittlerootTown_ProfessorBirchsLab_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_SCIENTIST_1, 0, 9, 8, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, LittlerootTown_ProfessorBirchsLab_EventScript_Aide, 0
	object_event 2, OBJ_EVENT_GFX_PROF_BIRCH, 0, 6, 4, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, LittlerootTown_ProfessorBirchsLab_EventScript_Birch, FLAG_HIDE_LITTLEROOT_TOWN_BIRCHS_LAB_BIRCH
	object_event 3, OBJ_EVENT_GFX_VAR_0, 0, 7, 4, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, LittlerootTown_ProfessorBirchsLab_EventScript_Rival, FLAG_HIDE_LITTLEROOT_TOWN_BIRCHS_LAB_RIVAL
	object_event 4, OBJ_EVENT_GFX_ITEM_BALL, 0, 6, 8, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, LittlerootTown_ProfessorBirchsLab_EventScript_Cyndaquil, FLAG_HIDE_LITTLEROOT_TOWN_BIRCHS_LAB_POKEBALL_CYNDAQUIL
	object_event 5, OBJ_EVENT_GFX_ITEM_BALL, 0, 6, 8, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, LittlerootTown_ProfessorBirchsLab_EventScript_Totodile, FLAG_HIDE_LITTLEROOT_TOWN_BIRCHS_LAB_POKEBALL_TOTODILE
	object_event 6, OBJ_EVENT_GFX_ITEM_BALL, 0, 6, 8, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, LittlerootTown_ProfessorBirchsLab_EventScript_Chikorita, FLAG_HIDE_LITTLEROOT_TOWN_BIRCHS_LAB_POKEBALL_CHIKORITA

LittlerootTown_ProfessorBirchsLab_MapWarps:
	warp_def 6, 12, 0, 2, MAP_LITTLEROOT_TOWN
	warp_def 7, 12, 0, 2, MAP_LITTLEROOT_TOWN

LittlerootTown_ProfessorBirchsLab_MapBGEvents:
	bg_event 10, 7, 0, BG_EVENT_PLAYER_FACING_NORTH, LittlerootTown_ProfessorBirchsLab_EventScript_Machine
	bg_event 11, 7, 0, BG_EVENT_PLAYER_FACING_NORTH, LittlerootTown_ProfessorBirchsLab_EventScript_Machine
	bg_event 7, 1, 0, BG_EVENT_PLAYER_FACING_ANY, LittlerootTown_ProfessorBirchsLab_EventScript_Book
	bg_event 8, 1, 0, BG_EVENT_PLAYER_FACING_ANY, LittlerootTown_ProfessorBirchsLab_EventScript_Book
	bg_event 1, 1, 0, BG_EVENT_PLAYER_FACING_ANY, LittlerootTown_ProfessorBirchsLab_EventScript_Bookshelf
	bg_event 0, 7, 0, BG_EVENT_PLAYER_FACING_ANY, LittlerootTown_ProfessorBirchsLab_EventScript_Bookshelf
	bg_event 1, 7, 0, BG_EVENT_PLAYER_FACING_ANY, LittlerootTown_ProfessorBirchsLab_EventScript_Bookshelf
	bg_event 2, 7, 0, BG_EVENT_PLAYER_FACING_ANY, LittlerootTown_ProfessorBirchsLab_EventScript_Bookshelf
	bg_event 3, 7, 0, BG_EVENT_PLAYER_FACING_ANY, LittlerootTown_ProfessorBirchsLab_EventScript_Bookshelf
	bg_event 4, 1, 0, BG_EVENT_PLAYER_FACING_ANY, LittlerootTown_ProfessorBirchsLab_EventScript_PC
	bg_event 3, 1, 0, BG_EVENT_PLAYER_FACING_ANY, LittlerootTown_ProfessorBirchsLab_EventScript_PC
	bg_event 1, 10, 0, BG_EVENT_PLAYER_FACING_ANY, LittlerootTown_ProfessorBirchsLab_EventScript_PC
	bg_event 1, 9, 0, BG_EVENT_PLAYER_FACING_ANY, LittlerootTown_ProfessorBirchsLab_EventScript_PC
	bg_event 11, 10, 0, BG_EVENT_PLAYER_FACING_ANY, LittlerootTown_ProfessorBirchsLab_EventScript_PC
	bg_event 11, 9, 0, BG_EVENT_PLAYER_FACING_ANY, LittlerootTown_ProfessorBirchsLab_EventScript_PC

LittlerootTown_ProfessorBirchsLab_MapEvents::
	map_events LittlerootTown_ProfessorBirchsLab_ObjectEvents, LittlerootTown_ProfessorBirchsLab_MapWarps, 0x0, LittlerootTown_ProfessorBirchsLab_MapBGEvents

