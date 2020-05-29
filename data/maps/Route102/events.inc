Route102_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_LITTLE_BOY, 0, 18, 11, 3, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, Route102_EventScript_LittleBoy, 0
	object_event 2, OBJ_EVENT_GFX_YOUNGSTER, 0, 33, 14, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NORMAL, 3, Route102_EventScript_Calvin, 0
	object_event 3, OBJ_EVENT_GFX_BUG_CATCHER, 0, 25, 15, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NORMAL, 2, Route102_EventScript_Rick, 0
	object_event 4, OBJ_EVENT_GFX_LASS, 0, 8, 7, 3, MOVEMENT_TYPE_FACE_DOWN_AND_RIGHT, 0, 0, TRAINER_TYPE_NORMAL, 3, Route102_EventScript_Tiana, 0
	object_event 5, OBJ_EVENT_GFX_BOY_1, 0, 37, 4, 3, MOVEMENT_TYPE_WANDER_AROUND, 1, 1, TRAINER_TYPE_NONE, 0, Route102_EventScript_Boy, 0
	object_event 6, OBJ_EVENT_GFX_ITEM_BALL, 0, 11, 15, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, Route102_EventScript_ItemPotion, FLAG_ITEM_ROUTE_102_POTION
	object_event 7, OBJ_EVENT_GFX_BERRY_TREE, 0, 24, 2, 3, MOVEMENT_TYPE_BERRY_TREE_GROWTH, 0, 0, TRAINER_TYPE_NONE, 2, BerryTreeScript, 0
	object_event 8, OBJ_EVENT_GFX_BERRY_TREE, 0, 25, 2, 3, MOVEMENT_TYPE_BERRY_TREE_GROWTH, 0, 0, TRAINER_TYPE_NONE, 1, BerryTreeScript, 0
	object_event 9, OBJ_EVENT_GFX_YOUNGSTER, 0, 19, 4, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NORMAL, 3, Route102_EventScript_Allen, 0

Route102_MapBGEvents:
	bg_event 17, 2, 0, BG_EVENT_PLAYER_FACING_ANY, Route102_EventScript_RouteSignPetalburg
	bg_event 40, 9, 0, BG_EVENT_PLAYER_FACING_ANY, Route102_EventScript_RouteSignOldale

Route102_MapEvents::
	map_events Route102_ObjectEvents, 0x0, 0x0, Route102_MapBGEvents

