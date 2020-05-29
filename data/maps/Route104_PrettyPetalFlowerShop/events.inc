Route104_PrettyPetalFlowerShop_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_WOMAN_2, 0, 0, 3, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, Route104_PrettyPetalFlowerShop_EventScript_ShopOwner, 0
	object_event 2, OBJ_EVENT_GFX_GIRL_3, 0, 7, 3, 3, MOVEMENT_TYPE_WANDER_LEFT_AND_RIGHT, 1, 0, TRAINER_TYPE_NONE, 0, Route104_PrettyPetalFlowerShop_EventScript_WailmerPailGirl, 0
	object_event 3, OBJ_EVENT_GFX_GIRL_1, 0, 11, 6, 4, MOVEMENT_TYPE_WANDER_AROUND, 2, 2, TRAINER_TYPE_NONE, 0, Route104_PrettyPetalFlowerShop_EventScript_RandomBerryGirl, 0

Route104_PrettyPetalFlowerShop_MapWarps:
	warp_def 2, 8, 0, 1, MAP_ROUTE104
	warp_def 3, 8, 0, 1, MAP_ROUTE104

Route104_PrettyPetalFlowerShop_MapEvents::
	map_events Route104_PrettyPetalFlowerShop_ObjectEvents, Route104_PrettyPetalFlowerShop_MapWarps, 0x0, 0x0

