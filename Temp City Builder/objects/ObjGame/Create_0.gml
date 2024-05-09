/// @description Insert description here
// You can write your code in this editor

//Randomize
randomise();

//random_set_seed(2969536331);

//Global Vars
global.GameSpeed		= 1;
global.GameSize		= 4;

enum Biome{
	coastal,
	plains,
	hills,
	varied
}

global.mapType = 0;
global.biomeSprite = 0;

screenSizeX			=240/2;
screenSizeY			=135/2;


//Debug Vars
debugToggle			=0;

//Create Menu
if(!instance_exists(ObjMouse)){
	instance_create_layer(x,y,"Managers",ObjMouse);
}
if(!instance_exists(ObjMenu)){
	instance_create_layer(x,y,"Managers",ObjMenu);
}



//Inputes

mouse1		=mb_left;
mouse2		=mb_right;

window_set_cursor(cr_none);