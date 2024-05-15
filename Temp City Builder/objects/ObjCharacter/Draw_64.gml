/// @description Insert description here
// You can write your code in this editor




//draw meters

if(idleTimer != 0){
	var _idletimer = MapValue(idleTimer,0,idleTime,-meterSize,meterSize);
	draw_set_color(c_black);
	draw_rectangle(x-meterSize*global.GameSize,y-meterHeight*global.GameSize,
					x+meterSize*global.GameSize,y-(meterHeight-meterWidth)*global.GameSize,0);
	draw_set_color(c_aqua);
	draw_rectangle(x-meterSize*global.GameSize,y-meterHeight*global.GameSize,
					x+_idletimer*global.GameSize,y-(meterHeight-meterWidth)*global.GameSize,0);
	draw_set_color(c_white);
}





