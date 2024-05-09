/// @description Insert description here
// You can write your code in this editor
depth = -y;


draw_sprite_ext(Sprite,Frame,x,y,global.GameSize,global.GameSize,0,c_white,1);

//draw damage


//draw meters

//draw build meter
if(Built == 0){
	var _buildtime = MapValue(buildTime,0,timeToBuild,-meterSize,meterSize);
	draw_set_color(c_black);
	draw_rectangle(x-meterSize*global.GameSize,y-10*global.GameSize,
					x+meterSize*global.GameSize,y-8*global.GameSize,0);
	draw_set_color(c_green);
	draw_rectangle(x-meterSize*global.GameSize,y-10*global.GameSize,
					x+_buildtime*global.GameSize,y-8*global.GameSize,0);
	draw_set_color(c_white);
}

//draw housing meter
if(Residents != Housing && Built == 1){
	var _housingtimer = MapValue(housingTimer,0,housingTime,-meterSize,meterSize);
	draw_set_color(c_black);
	draw_rectangle(x-meterSize*global.GameSize,y-10*global.GameSize,
					x+meterSize*global.GameSize,y-8*global.GameSize,0);
	draw_set_color(c_fuchsia);
	draw_rectangle(x-meterSize*global.GameSize,y-10*global.GameSize,
					x+_housingtimer*global.GameSize,y-8*global.GameSize,0);
	draw_set_color(c_white);
}
if(ObjGame.debugToggle == 1){
	draw_text(x,y,string(Residents)+"/"+string(Housing));
}