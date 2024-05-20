/// @description Insert description here
// You can write your code in this editor

//Randomize
randomise();
var seed = choose(628499547, 45416476, 1856464973, 4214162645,2969536331);
random_set_seed(seed);

//Global Vars
global.GameSpeed		= 1;
global.GameSize			= 4;
global.GamePaused		= -1;
global.startingOffset	= .5; // either .5, 1, or 1.5

global.genTime			= 300;
global.genTimer			= 0;
global.genTick			= 0;


gameSpeedMax		= 3;

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
debugToggle			= 0;

//Create Menu
if(!instance_exists(ObjMouse)){
	instance_create_layer(x,y,"Managers",ObjMouse);
}
if(!instance_exists(ObjMenu)){
	instance_create_layer(x,y,"Managers",ObjMenu);
}



//Inputes

mouse1		= mb_left;
mouse2		= mb_right;
Rotate		= ord("R");

window_set_cursor(cr_none);


//enums

enum Building{
	none,
	human,
	upgrade,
	destroy,
	//tier 1
	start,
	hut,
	gatheringhut,
	choppinghut,
	pickinghut,
	studyhut,
	//tier 2
	smallhouse,
	lumbermill,
	forge,
	blacksmith,
	//tier 3
	
}
