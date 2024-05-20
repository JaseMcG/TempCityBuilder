/// @description Insert description here
// You can write your code in this editor

//Select this button
var mouse_colide = point_in_rectangle(mouse_x,mouse_y,
					x-7*global.GameSize,y-7*global.GameSize,
					x+7*global.GameSize,y+7*global.GameSize);
if (mouse_colide == true){
	Frame = 1;
	if(global.m1 = 1){
		Frame = 2;
	}
}else Frame = 0;

//what button type
if(buttonType == Building.hut){
	Sprite = SprButtonHut;
}








