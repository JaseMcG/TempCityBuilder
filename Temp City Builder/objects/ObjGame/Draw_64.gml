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
draw_set_color(c_fuchsia);
//draw_text(x,y+d*0,"debug on:" + string(debugToggle));
if(debugToggle == 1){
	
	
	draw_text(x+d,y+d*1,"seed: " + string(random_get_seed()));
	draw_text(x+d,y+d*2,"humans: " + string(ds_list_size(global.HumanList)));
	draw_text(x+d,y+d*3,"Day: " + string(Day));

	
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
}



draw_set_alpha(1);
draw_set_color(c_white);



