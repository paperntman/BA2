layer_set_visible("isometric", false);

global.the_map = ds_grid_create(MAP_W, MAP_H);

var _tilemap = layer_tilemap_get_id("isometric");

for(var _tx = 0; _tx < MAP_W; _tx++){
	for(var _ty = 0; _ty < MAP_H; _ty++){
		var _tiledata = tilemap_get(_tilemap, _tx, _ty);
		var _tile = [-1, 0];
		_tile[TILE.SPRITE] = _tiledata;
		_tile[TILE.Z] = 0;
		global.the_map[# _tx, _ty] = _tile
	}
}