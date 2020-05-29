PetalburgWoods_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_CUTTABLE_TREE, 0, 19, 10, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, EventScript_CutTree, FLAG_TEMP_11
	object_event 2, OBJ_EVENT_GFX_CUTTABLE_TREE, 0, 19, 11, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, EventScript_CutTree, FLAG_TEMP_12
	object_event 3, OBJ_EVENT_GFX_AQUA_MEMBER_M, 0, 26, 17, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_HIDE_PETALBURG_WOODS_AQUA_GRUNT
	object_event 4, OBJ_EVENT_GFX_MAN_2, 0, 26, 20, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_HIDE_PETALBURG_WOODS_DEVON_EMPLOYEE
	object_event 5, OBJ_EVENT_GFX_ITEM_BALL, 0, 45, 7, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, PetalburgWoods_EventScript_ItemGreatBall, FLAG_ITEM_PETALBURG_WOODS_GREAT_BALL
	object_event 6, OBJ_EVENT_GFX_ITEM_BALL, 0, 35, 20, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, PetalburgWoods_EventScript_ItemXAttack, FLAG_ITEM_PETALBURG_WOODS_X_ATTACK
	object_event 7, OBJ_EVENT_GFX_ITEM_BALL, 0, 4, 8, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, PetalburgWoods_EventScript_ItemEther, FLAG_ITEM_PETALBURG_WOODS_ETHER
	object_event 8, OBJ_EVENT_GFX_BOY_2, 0, 15, 19, 3, MOVEMENT_TYPE_WANDER_UP_AND_DOWN, 1, 2, TRAINER_TYPE_NONE, 0, PetalburgWoods_EventScript_Boy1, 0
	object_event 9, OBJ_EVENT_GFX_BUG_CATCHER, 0, 7, 32, 3, MOVEMENT_TYPE_FACE_DOWN_LEFT_AND_RIGHT, 0, 0, TRAINER_TYPE_NORMAL, 3, PetalburgWoods_EventScript_Lyle, 0
	object_event 10, OBJ_EVENT_GFX_BUG_CATCHER, 0, 4, 14, 3, MOVEMENT_TYPE_FACE_DOWN_UP_AND_RIGHT, 0, 0, TRAINER_TYPE_NORMAL, 3, PetalburgWoods_EventScript_James, 0
	object_event 11, OBJ_EVENT_GFX_BOY_3, 0, 30, 34, 3, MOVEMENT_TYPE_WANDER_AROUND, 2, 1, TRAINER_TYPE_NONE, 0, PetalburgWoods_EventScript_Boy2, 0
	object_event 12, OBJ_EVENT_GFX_ITEM_BALL, 0, 4, 26, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, PetalburgWoods_EventScript_ItemParalyzeHeal, FLAG_ITEM_PETALBURD_WOODS_PARALYZE_HEAL
	object_event 13, OBJ_EVENT_GFX_GIRL_2, 0, 33, 5, 3, MOVEMENT_TYPE_LOOK_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, PetalburgWoods_EventScript_Girl, 0

PetalburgWoods_MapWarps:
	warp_def 14, 5, 0, 2, MAP_ROUTE104
	warp_def 15, 5, 0, 3, MAP_ROUTE104
	warp_def 16, 38, 0, 4, MAP_ROUTE104
	warp_def 17, 38, 0, 5, MAP_ROUTE104
	warp_def 36, 38, 0, 6, MAP_ROUTE104
	warp_def 37, 38, 0, 7, MAP_ROUTE104

PetalburgWoods_MapCoordEvents:
	coord_event 26, 23, 3, VAR_PETALBURG_WOODS_STATE, 0, PetalburgWoods_EventScript_DevonResearcherLeft
	coord_event 27, 23, 3, VAR_PETALBURG_WOODS_STATE, 0, PetalburgWoods_EventScript_DevonResearcherRight

PetalburgWoods_MapBGEvents:
	bg_event 14, 32, 3, BG_EVENT_PLAYER_FACING_ANY, PetalburgWoods_EventScript_Sign1
	bg_hidden_item_event 39, 35, 3, ITEM_POTION, FLAG_HIDDEN_ITEM_PETALBURG_WOODS_POTION
	bg_hidden_item_event 26, 6, 3, ITEM_TINY_MUSHROOM, FLAG_HIDDEN_ITEM_PETALBURG_WOODS_TINY_MUSHROOM_1
	bg_hidden_item_event 40, 29, 3, ITEM_TINY_MUSHROOM, FLAG_HIDDEN_ITEM_PETALBURG_WOODS_TINY_MUSHROOM_2
	bg_hidden_item_event 4, 19, 3, ITEM_POKE_BALL, FLAG_HIDDEN_ITEM_PETALBURG_WOODS_POKE_BALL
	bg_event 11, 8, 3, BG_EVENT_PLAYER_FACING_ANY, PetalburgWoods_EventScript_Sign2

PetalburgWoods_MapEvents::
	map_events PetalburgWoods_ObjectEvents, PetalburgWoods_MapWarps, PetalburgWoods_MapCoordEvents, PetalburgWoods_MapBGEvents

