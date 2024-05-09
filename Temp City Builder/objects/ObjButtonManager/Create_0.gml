/// @description Insert description here
// You can write your code in this editor

Width	= ObjGenerator.tileSize * ObjGame.screenSizeX;//display_get_width();

Button = 0;
buttonMax = 6;
buttonAmount = 0;

//checks to unlock buttons
characterCheck = 0;

spawnX = 16 * global.GameSize;//(Width / 2)-(20*ObjGame.globalGameSize*(Button/2));

enum ButtonType{
	none,
	house,
	matierial,
	workshop,
	
}
buttonType = ButtonType.none;

//for(var i = 0; i < Button; i += 1){
//	instance_create_layer(spawnX,16*ObjGame.globalGameSize,"instances",ObjButton);
//	spawnX = spawnX + (20*ObjGame.globalGameSize);
//}
