var _tile, _screenx, _screeny, _tileindex, _tilez
for (var _tx = 0; _tx < MAP_W; _tx++){
	for (var _ty = 0; _ty < MAP_H; _ty++){
		_tile = global.the_map[# _tx, _ty];
		_screenx = tile_to_screen_x(_tx, _ty);
		_screeny = tile_to_screen_y(_tx, _ty);
		
		_tileindex = _tile[TILE.SPRITE];
		_tilez = _tile[TILE.Z];
		
		if ( _tileindex > 0) {
			draw_sprite(spr_isometric_test, _tileindex-1, _screenx, _screeny + _tilez)
			show_debug_message(_tileindex)
		}
		
	}
}