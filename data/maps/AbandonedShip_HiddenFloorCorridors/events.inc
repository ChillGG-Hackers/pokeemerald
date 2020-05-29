AbandonedShip_HiddenFloorCorridors_MapWarps:
	warp_def 3, 8, 3, 0, MAP_ABANDONED_SHIP_HIDDEN_FLOOR_ROOMS
	warp_def 6, 8, 3, 2, MAP_ABANDONED_SHIP_HIDDEN_FLOOR_ROOMS
	warp_def 9, 8, 3, 4, MAP_ABANDONED_SHIP_HIDDEN_FLOOR_ROOMS
	warp_def 3, 3, 3, 6, MAP_ABANDONED_SHIP_HIDDEN_FLOOR_ROOMS
	warp_def 6, 3, 3, 7, MAP_ABANDONED_SHIP_HIDDEN_FLOOR_ROOMS
	warp_def 9, 3, 3, 8, MAP_ABANDONED_SHIP_HIDDEN_FLOOR_ROOMS

AbandonedShip_HiddenFloorCorridors_MapBGEvents:
	bg_event 3, 8, 3, BG_EVENT_PLAYER_FACING_ANY, AbandonedShip_HiddenFloorCorridors_EventScript_Room1Door
	bg_event 6, 8, 3, BG_EVENT_PLAYER_FACING_ANY, AbandonedShip_HiddenFloorCorridors_EventScript_Room2Door
	bg_event 3, 4, 0, BG_EVENT_PLAYER_FACING_ANY, AbandonedShip_HiddenFloorCorridors_EventScript_Room4Door
	bg_event 9, 4, 0, BG_EVENT_PLAYER_FACING_ANY, AbandonedShip_HiddenFloorCorridors_EventScript_Room6Door

AbandonedShip_HiddenFloorCorridors_MapEvents::
	map_events 0x0, AbandonedShip_HiddenFloorCorridors_MapWarps, 0x0, AbandonedShip_HiddenFloorCorridors_MapBGEvents

