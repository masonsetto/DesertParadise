function ScreenToTileX(sX, sY){
	var _screenX = sX - (SCREEN_W * 0.45);
	var _screenY = sY - (SCREEN_H * 0.25);
	return floor((_screenX / (TILE_W * 0.5) + _screenY / (TILE_H * 0.5)) * 0.5);
} 