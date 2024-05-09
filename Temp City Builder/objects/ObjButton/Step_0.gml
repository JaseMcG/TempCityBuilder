/// @description Insert description here
// You can write your code in this editor

var mouse_colide = point_in_rectangle(mouse_x,mouse_y,
					x-7*global.GameSize,y-7*global.GameSize,
					x+7*global.GameSize,y+7*global.GameSize);
if (mouse_colide == true){
	Frame = 1;
	if(global.m1 = 1){
		Frame = 2;
	}
}else Frame = 0;


//x = Width / 2;







