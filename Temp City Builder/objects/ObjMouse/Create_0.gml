/// @description Insert description here
// You can write your code in this editor

Sprite		= SprMouseCursor;
Frame		= 0;
heldSprite	= 0;
heldAlpha	= .5;
heldColour	= c_white;
heldObj		= 0;
heldX		= 0;
heldY		= 0;
heldYOffset	= 16;
entityColRange	= 64;

Width	= 2 * global.GameSize * ObjGame.screenSizeX;
Height	= 2 * global.GameSize * ObjGame.screenSizeY;
Border	= 16 *  global.GameSize;

enum HeldItem{
	none,
	human,
	start,
	hut,
	choppinghut,
	pickinghut,
	studyhut,
	upgrade
	
}

mouseHeld	= HeldItem.none;
