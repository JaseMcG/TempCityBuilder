/// @description Insert description here
// You can write your code in this editor

Sprite			= SprMouseCursor;
Frame			= 0;
Facing			= 1;
heldSprite		= 0;
heldAlpha		= .5;
heldColour		= c_white;
heldObj			= 0;
heldX			= 0;
heldY			= 0;
heldYOffset		= 16;
entityColRange	= 0;
colRangeSprite	= 0;

Width			= 2 * global.GameSize * ObjGame.screenSizeX;
Height			= 2 * global.GameSize * ObjGame.screenSizeY;
XOffset			= (8) * global.GameSize;
YOffset			= (8) * global.GameSize;
Border			= 8 *  global.GameSize;
bottomBorder	= Border + (18 *  global.GameSize);

canBuild		= 0;
costIncrease	= 2;
Cost			= 0;

mouseHeld		= Building.none;
