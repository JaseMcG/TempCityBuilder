/// @description Insert description here
// You can write your code in this editor

//reset vars

global.genTick = 0;

//inputes

global.m1			= mouse_check_button(mouse1);
global.m2			= mouse_check_button(mouse2);

global.m1Release	= mouse_check_button_released(mouse1);
global.m2Release	= mouse_check_button_released(mouse2);

global.rotate		= keyboard_check_pressed(Rotate);

//generator
global.genTimer += 1 * global.GameSpeed;
if(global.genTimer >= global.genTime){
	global.genTick	= 1;
	global.genTimer = 0;
}

#region World Time
//World Time 
if(instance_exists(ObjMenu)){
	var _alpha = .5;
	if(ObjMenu.gameStart == 1){
		gameTimer += 1 * global.GameSpeed;
		if(gameTimer >= dayTime + nightTime){
			gameTimer = 0;
		}
		if(gameTimer == 0){
			Day++;
		}
		
		nightAlpha = clamp(nightAlpha,0,_alpha);
		if(gameTimer > dayTime){
			nightAlpha += .005 * global.GameSpeed;
		}

		if(gameTimer < dayTime){
			nightAlpha -= .005 * global.GameSpeed;
		}
	}
	
	//determine Time
	if(nightAlpha <= 0){global.GameTime = Time.day;}
	if(nightAlpha >= _alpha){global.GameTime = Time.night;}

}

#endregion

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
	if(keyboard_check_released(vk_f8)){
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






