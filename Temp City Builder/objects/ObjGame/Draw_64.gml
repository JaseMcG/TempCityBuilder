/// @description Insert description here
// You can write your code in this editor

var d = 32;
draw_set_color(c_fuchsia);
draw_text(x,y+d*0,"debug on:" + string(debugToggle));
if(debugToggle == 1){
	
	
	draw_text(x,y+d*1,"seed:" + string(random_get_seed()));
	draw_text(x,y+d*2,"gamespeed:" + string(global.GameSpeed));
	if(instance_exists(ObjGenerator)){
		draw_text(x,y+d*6,"width:" + string(ObjGenerator.worldScaleX));
		draw_text(x,y+d*7,"height:" + string(ObjGenerator.worldScaleY));
	}
	if(instance_exists(ObjMenu)){
		draw_text(x,y+d*4,"paused:" + string(ObjMenu.gamePause));
		if(ObjMenu.gameStart == false){
			draw_text(x,y+d*3,"prevgamespeed:" + string(ObjMenu.prevGameSpeed));
			draw_text(x,y+d*8,"ScreenSize:" + string(ObjMenu.gameScreenSize));
			draw_text(x,y+d*9,"MapType:" + string(ObjMenu.gameMapType));
			draw_text(x,y+d*10,"MapBiome:" + string(ObjMenu.gameMapBiome));
		}
	}
	if(instance_exists(ObjButtonManager)){
		draw_text(x,y+d*3,"Buttons:" + string(ObjButtonManager.buttonAmount));
	}
}


draw_set_color(c_white);



