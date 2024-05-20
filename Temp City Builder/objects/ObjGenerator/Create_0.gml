/// @description Insert description here
// You can write your code in this editor

mapCreated = 0;
perlinNoiseSurface = surface_create(room_width, room_height);
mapComplete = 0;

yStart = random(1000);
xStart = random(1000);
mapInc = 0.05;//changes noise amount
resourceInc = 0.035;//changes resorce noise
biomeInc = 0.02;//changes biome noise amount

treeSpawn = 3;
rockSpawn = 9;
treeSpawnRate = 2;//out of 100
bushSpawnRate = 4;
rockSpawnRate = 2;//out of 100

tileSize = 2 * global.GameSize;

worldScaleX = tileSize * ObjGame.screenSizeX;
worldScaleY = tileSize * ObjGame.screenSizeY;
roomX = ObjGame.screenSizeX;//worldScaleX / tileSize;
roomY = ObjGame.screenSizeY;//worldScaleY / tileSize;

biomeMap[roomX, roomY] = 0;







