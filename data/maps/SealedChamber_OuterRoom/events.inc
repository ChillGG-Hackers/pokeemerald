SealedChamber_OuterRoom_MapWarps:
	warp_def 10, 2, 3, 0, MAP_SEALED_CHAMBER_INNER_ROOM

SealedChamber_OuterRoom_MapBGEvents:
	bg_event 5, 6, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BrailleABC
	bg_event 5, 9, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BrailleGHI
	bg_event 5, 12, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BrailleMNO
	bg_event 5, 15, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BrailleTUV
	bg_event 11, 6, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BrailleDEF
	bg_event 11, 9, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BrailleJKL
	bg_event 11, 12, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BraillePQRS
	bg_event 11, 15, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BrailleWXYZ
	bg_event 16, 6, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BraillePeriod
	bg_event 16, 9, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BrailleComma
	bg_event 10, 2, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_InnerRoomEntranceWall
	bg_event 6, 6, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BrailleABC
	bg_event 4, 6, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BrailleABC
	bg_event 4, 9, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BrailleGHI
	bg_event 6, 9, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BrailleGHI
	bg_event 4, 12, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BrailleMNO
	bg_event 6, 12, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BrailleMNO
	bg_event 4, 15, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BrailleTUV
	bg_event 6, 15, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BrailleTUV
	bg_event 10, 6, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BrailleDEF
	bg_event 12, 6, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BrailleDEF
	bg_event 10, 9, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BrailleJKL
	bg_event 12, 9, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BrailleJKL
	bg_event 10, 12, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BraillePQRS
	bg_event 12, 12, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BraillePQRS
	bg_event 10, 15, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BrailleWXYZ
	bg_event 12, 15, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BrailleWXYZ
	bg_event 9, 2, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BrailleDigHere
	bg_event 11, 2, 0, BG_EVENT_PLAYER_FACING_ANY, SealedChamber_OuterRoom_EventScript_BrailleDigHere

SealedChamber_OuterRoom_MapEvents::
	map_events 0x0, SealedChamber_OuterRoom_MapWarps, 0x0, SealedChamber_OuterRoom_MapBGEvents

