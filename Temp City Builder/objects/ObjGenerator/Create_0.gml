/// @description Insert description here
// You can write your code in this editor

mapCreated = 0;
perlinNoiseSurface = surface_create(room_width, room_height);
mapComplete = 0;

yStart = random(1000);
X = random(1000);
mapInc = 0.05;//changes noise amount
biomeInc = 0.02;//changes biome noise amount

tileSize = 2 * global.GameSize;

worldScaleX = tileSize * ObjGame.screenSizeX;
worldScaleY = tileSize * ObjGame.screenSizeY;
roomX = ObjGame.screenSizeX;//worldScaleX / tileSize;
roomY = ObjGame.screenSizeY;//worldScaleY / tileSize;

biomeMap[roomX, roomY] = 0;







