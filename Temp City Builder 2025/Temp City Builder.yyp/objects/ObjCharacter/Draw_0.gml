/// @description Insert description here
// You can write your code in this editor

depth = -y;

if(Visible == true){
	
	draw_sprite_ext(Sprite,Frame,x,y,global.GameSize*Facing,global.GameSize,Rot,Colour,1);
	Colour		= c_white;

	//draw meters

	if(Timer != 0){
		var _time = idleTime;
		var _idletimer = MapValue(Timer,0,_time,-meterSize,meterSize);
		draw_set_color(c_black);
		draw_rectangle(x-meterSize*global.GameSize,y-meterHeight*global.GameSize,
						x+meterSize*global.GameSize,y-(meterHeight-meterWidth)*global.GameSize-1,0);
		draw_set_color(c_aqua);
		draw_rectangle(x-meterSize*global.GameSize,y-meterHeight*global.GameSize,
						x+_idletimer*global.GameSize,y-(meterHeight-meterWidth)*global.GameSize-1,0);
		draw_set_color(c_white);
	}

}


event_inherited();