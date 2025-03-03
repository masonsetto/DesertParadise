/// @desc Build the map

layer_set_visible("Map", false);

global.theMap = ds_grid_create(MAP_W, MAP_H);

window_set_fullscreen(true);

var tileMap = layer_tilemap_get_id("Map");

for (var tX = 0; tX < MAP_W; tX++)
{
	for (var tY = 0; tY < MAP_H; tY++;)
	{
		var tileMapData = tilemap_get(tileMap, tX, tY);
		//Format: [Sprite, Z]
		var thisTile = [-1, 0];
		thisTile[TILE.SPRITE] = tileMapData;
		thisTile[TILE.Z] = 0; //can also use irandom(#) to make tiles different heights
		global.theMap[# tX, tY] = thisTile;
	}
}