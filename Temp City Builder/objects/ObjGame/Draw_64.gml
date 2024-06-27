/// @description Insert description here
// You can write your code in this editor

//draw night
draw_set_color(c_navy);
draw_set_alpha(nightAlpha);
draw_rectangle(0,0,Width,Height,0);

draw_set_alpha(1);
draw_set_color(c_white);


draw_set_font(global.fontMedW);
var s = 2; //local game size
var d = 16 * s; //spaced between text vertically
var a = 2; //adjustment to vertal spaces
draw_set_color(c_fuchsia);
//draw_text(x,y+d*0,"debug on:" + string(debugToggle));
if(debugToggle == 1){
	
	draw_text_transformed(x+d,y+d*a,"seed: " + string(random_get_seed()),s,s,0,);
	a += 1;
	draw_text_transformed(x+d,y+d*a,"Day: " + string(Day)
						+ "   Time: " +string(global.GameTime)
						+ "   Tic: " +string(gameTimer),2,2,0);
	a += 1;
	draw_text_transformed(x+d,y+d*a,"humans: " + string(ds_list_size(global.HumanList))
						+ "   building: " + string(ds_list_size(global.BuildingList)),s,s,0);
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
		draw_text_transformed(x+d,y+d*a,"x: " + string(ObjCharacter.x),s,s,0);
		a += 1;
		draw_text_transformed(x+d,y+d*a,"y: " + string(ObjCharacter.y),s,s,0);
		a += 1;
		draw_text_transformed(x+d,y+d*a,"work hut: " + string(ObjCharacter.workHut),s,s,0);
		a += 1;
	}
}



draw_set_alpha(1);
draw_set_color(c_white);



