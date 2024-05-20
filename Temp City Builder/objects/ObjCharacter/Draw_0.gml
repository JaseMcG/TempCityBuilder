/// @description Insert description here
// You can write your code in this editor

depth = -y;

draw_sprite_ext(Sprite,Frame,x,y,global.GameSize*Facing,global.GameSize,0,c_white,1);


//draw meters

if(idleTimer != 0){
	var _idletimer = MapValue(idleTimer,0,idleTime,-meterSize,meterSize);
	draw_set_color(c_black);
	draw_rectangle(x-meterSize*global.GameSize,y-meterHeight*global.GameSize,
					x+meterSize*global.GameSize,y-(meterHeight-meterWidth)*global.GameSize-1,0);
	draw_set_color(c_aqua);
	draw_rectangle(x-meterSize*global.GameSize,y-meterHeight*global.GameSize,
					x+_idletimer*global.GameSize,y-(meterHeight-meterWidth)*global.GameSize-1,0);
	draw_set_color(c_white);
}


event_inherited();