/// @description Insert description here
// You can write your code in this editor


//variables

gameStart		= false;

prevGameSpeed	= 0;

Width	= 2 * global.GameSize * ObjGame.screenSizeX;//display_get_width();
Height	= 2 * global.GameSize * ObjGame.screenSizeY;


gameScreenSize	= global.GameSize;
gameMapType		= 0;
gameMapBiome	= Biome.meadow;


startingOffsetX	= 1;
startingOffsetY = 2;
buttonSize		= 8 * global.GameSize;
XOffset			= 16 * global.GameSize;
YOffset			= 16 * global.GameSize;
xBuffer			= 64;
yBuffer			= 64;
startXBuffer	= 80;
startYBuffer	= 64;

Sprite			= SprSmallButtons;
startSprite		= SprStartButton
bgSprite		= SprBGMeadow;
bgStuffSprite	= SprBGMeadowStuff;
pauseSprite		= SprPaused;
xButtonSprite	= SprXButton;
startAlpha		= 0;

xButton			= 0;
frameXButton	= 0;

frameSizeTiny	= 0;
frameSizeSmall	= 0;
frameSizeMedium	= 0;
frameSizeBig	= 0;
frameSizeLarge	= 0;

frameMapCoastal	= 0;
frameMapPlains	= 0;
frameMapHills	= 0;
frameMapVaried	= 0;

frameBiomeMeadow	= 0;
frameBiomeTundra	= 0;

frameStartButton	= 0;

