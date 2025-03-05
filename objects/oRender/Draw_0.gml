/// @desc Render game

var tileData, screenX, screenY, tileIndex, tileZ;

for (var tX = 0; tX < MAP_W; tX++)
{
	for (var tY = 0; tY < MAP_H; tY++)
	{
		tileData = global.theMap[# tX, tY]; // array that holds all tiles- each tile is associated with an index
		screenX = tileToScreenX(tX, tY);
		screenY = tileToScreenY(tX, tY);
		
		tileIndex = tileData[TILE.SPRITE]; // index for tile array 
		tileZ = tileData[TILE.Z];
		
		if ((ScreenToTileX(mouse_x, mouse_y) == tX) && (ScreenToTileY(mouse_x, mouse_y) == tY))
		{
			tileIndex = global.selectedTile; // this is the index for the array we made that holds all the tiles- if you want to place a different tile (like a house) then add it to the array and go from there
			tileZ += 2; // this places the tile 2 pixels lower than plane- you can change this if you want
			
			// this if statement is supposed to draw a tile where cursor is when left mb is clicked
			if (mouse_check_button_pressed(mb_left))
			{
				global.theMap[# tX, tY] = [global.selectedTile, tileZ - 2]; // tileZ - 2 resets the above tileZ modification so that the tile is placed at the same level as the map
			}
		}
		
		if (tileIndex != 0) 
		{
			draw_sprite(floor1, tileIndex - 1, screenX, screenY + tileZ);
		}
	}
} 