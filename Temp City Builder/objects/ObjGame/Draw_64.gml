/// @description Insert description here
// You can write your code in this editor

//draw night
draw_set_color(c_navy);
draw_set_alpha(nightAlpha);
draw_rectangle(0,0,Width,Height,0);

draw_set_alpha(1);
draw_set_color(c_white);


draw_set_font(FonPixel);
var d = 32;
var a = 1;
draw_set_color(c_fuchsia);
//draw_text(x,y+d*0,"debug on:" + string(debugToggle));
if(debugToggle == 1){
	
	
	draw_text(x+d,y+d*a,"seed: " + string(random_get_seed()));
	a += 1;
	draw_text(x+d,y+d*a,"humans: " + string(ds_list_size(global.HumanList)));
	a += 1;
	draw_text(x+d,y+d*a,"building: " + string(ds_list_size(global.BuildingList)));
	a += 1;
	draw_text(x+d,y+d*a,"Day: " + string(Day));
	a += 1;

	
	if(instance_exists(ObjGenerator)){
;
	}
	if(instance_exists(ObjMenu)){
		
		if(ObjMenu.gameStart == false){

		}
	}
	if(instance_exists(ObjButtonManager)){
;
	}
	if(instance_exists(ObjCharacter)){
		//draw_text(x+d,y+d*5,"x" + string(ObjCharacter.x));
		//draw_text(x+d,y+d*6,"y" + string(ObjCharacter.y));
		//draw_text(x+d,y+d*7,"to x" + string(ObjCharacter.xTo));
		//draw_text(x+d,y+d*8,"to y" + string(ObjCharacter.yTo));
	}
}



draw_set_alpha(1);
draw_set_color(c_white);



