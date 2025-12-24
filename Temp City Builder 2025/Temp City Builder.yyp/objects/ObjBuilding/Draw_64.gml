
//debug
if(ObjGame.debugToggle == 1){
	
	draw_set_font(global.fontMedW);
	var s = 2; //local game size
	var d = 16 * s; //spaced between text vertically
	var a = 2; //adjustment to vertal spaces
	draw_set_color(c_fuchsia);
	
	//display residents
	if(Housing != 0){
		draw_text_transformed(x,y,string(Residents)+"/"+string(Housing),2,2,0,);
	}
	if(genStrength != 0){
		draw_circle(x,y,Radius,1);
	}
	
	draw_set_color(c_white);
}