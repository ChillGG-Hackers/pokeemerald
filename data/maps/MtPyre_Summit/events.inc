MtPyre_Summit_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_OLD_MAN, 0, 22, 5, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, MtPyre_Summit_EventScript_OldMan, 0
	object_event 2, OBJ_EVENT_GFX_ARCHIE, 0, 23, 6, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_HIDE_MT_PYRE_SUMMIT_ARCHIE
	object_event 3, OBJ_EVENT_GFX_EXPERT_F, 0, 23, 5, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, MtPyre_Summit_EventScript_OldLady, 0
	object_event 4, OBJ_EVENT_GFX_AQUA_MEMBER_M, 0, 21, 15, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NORMAL, 3, MtPyre_Summit_EventScript_Grunt1, FLAG_HIDE_MT_PYRE_SUMMIT_TEAM_AQUA
	object_event 5, OBJ_EVENT_GFX_AQUA_MEMBER_M, 0, 25, 18, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NORMAL, 3, MtPyre_Summit_EventScript_Grunt2, FLAG_HIDE_MT_PYRE_SUMMIT_TEAM_AQUA
	object_event 6, OBJ_EVENT_GFX_AQUA_MEMBER_M, 0, 21, 11, 3, MOVEMENT_TYPE_FACE_RIGHT, 0, 0, TRAINER_TYPE_NORMAL, 3, MtPyre_Summit_EventScript_Grunt3, FLAG_HIDE_MT_PYRE_SUMMIT_TEAM_AQUA
	object_event 7, OBJ_EVENT_GFX_AQUA_MEMBER_F, 0, 25, 11, 3, MOVEMENT_TYPE_FACE_LEFT, 1, 1, TRAINER_TYPE_NORMAL, 3, MtPyre_Summit_EventScript_Grunt4, FLAG_HIDE_MT_PYRE_SUMMIT_TEAM_AQUA
	object_event 8, OBJ_EVENT_GFX_MAXIE, 0, 23, 6, 3, MOVEMENT_TYPE_FACE_UP, 1, 1, TRAINER_TYPE_NONE, 0, 0x0, FLAG_HIDE_MT_PYRE_SUMMIT_MAXIE

MtPyre_Summit_MapWarps:
	warp_def 22, 31, 3, 1, MAP_MT_PYRE_EXTERIOR
	warp_def 23, 31, 3, 1, MAP_MT_PYRE_EXTERIOR
	warp_def 24, 31, 3, 1, MAP_MT_PYRE_EXTERIOR

MtPyre_Summit_MapCoordEvents:
	coord_event 22, 7, 3, VAR_MT_PYRE_STATE, 0, MtPyre_Summit_EventScript_TeamAquaTrigger0
	coord_event 23, 7, 3, VAR_MT_PYRE_STATE, 0, MtPyre_Summit_EventScript_TeamAquaTrigger1
	coord_event 24, 7, 3, VAR_MT_PYRE_STATE, 0, MtPyre_Summit_EventScript_TeamAquaTrigger2
	coord_event 22, 9, 3, VAR_MT_PYRE_STATE, 2, MtPyre_Summit_EventScript_ArchieMaxieTrigger0
	coord_event 23, 9, 3, VAR_MT_PYRE_STATE, 2, MtPyre_Summit_EventScript_ArchieMaxieTrigger1
	coord_event 24, 9, 3, VAR_MT_PYRE_STATE, 2, MtPyre_Summit_EventScript_ArchieMaxieTrigger2

MtPyre_Summit_MapBGEvents:
	bg_hidden_item_event 9, 25, 0, ITEM_ZINC, FLAG_HIDDEN_ITEM_MT_PYRE_SUMMIT_ZINC
	bg_hidden_item_event 37, 7, 3, ITEM_RARE_CANDY, FLAG_HIDDEN_ITEM_MT_PYRE_SUMMIT_RARE_CANDY

MtPyre_Summit_MapEvents::
	map_events MtPyre_Summit_ObjectEvents, MtPyre_Summit_MapWarps, MtPyre_Summit_MapCoordEvents, MtPyre_Summit_MapBGEvents

