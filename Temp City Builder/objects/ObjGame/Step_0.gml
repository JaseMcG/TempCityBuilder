/// @description Insert description here
// You can write your code in this editor

//inputes

global.m1			= mouse_check_button(mouse1);
global.m2			= mouse_check_button(mouse2);

global.m1Release	= mouse_check_button_released(mouse1);
global.m2Release	= mouse_check_button_released(mouse2);


//Debug options

//not in debug mode
if(keyboard_check_pressed(vk_f4)){global.GameSpeed--;}
if(keyboard_check_pressed(vk_f5)){global.GameSpeed++;}
if(debugToggle == 0){
	global.GameSpeed = clamp(global.GameSpeed,0,gameSpeedMax);
}


//in debug mode
if(keyboard_check_pressed(vk_f3)){
	debugToggle = !debugToggle;
}
if(debugToggle == 1){
	
	if(keyboard_check_pressed(vk_f1)){
		game_restart();
	}
	if(keyboard_check_pressed(vk_f7)){
		randomize();
	}
	if(keyboard_check_released(vk_f7)){
		if(instance_exists(ObjGenerator)){
			
			ObjGenerator.mapComplete = false;
		}
	}
	
}

if(ObjMenu.gameStart == true){
	//Create Managers
	if(!instance_exists(ObjGenerator)){
		instance_create_layer(x,y,"Managers",ObjGenerator);
	}

	if(!instance_exists(ObjButtonManager)){
		instance_create_layer(x,y,"Managers",ObjButtonManager);
	}
	if(!instance_exists(ObjKindomManager)){
		instance_create_layer(x,y,"Managers", ObjKindomManager);
	}
}






