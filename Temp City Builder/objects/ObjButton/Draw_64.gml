/// @description Insert description here
// You can write your code in this editor





draw_sprite_ext(Sprite,Frame,x,y,global.GameSize,global.GameSize,0,c_white,1);


if(ObjGame.debugToggle == true){
	draw_rectangle(x-7*global.GameSize,y-7*global.GameSize
				  ,x+7*global.GameSize,y+7*global.GameSize,1);
}

