/// @description Insert description here
// You can write your code in this editor



//create buttons
buttonAmount = instance_number(ObjButton);
if(Button > 0 && buttonMax > 0){
	button = instance_create_layer(((buttonAmount+1)*20)*global.GameSize,Height-16*global.GameSize,"instances",ObjButton);
	with(button){
		buttonType = other.buttonType;
	}
	
	spawnX = spawnX + (26*global.GameSize);
	
	Button--;
	buttonMax--;
}

//get a house button 
if(instance_exists(ObjCharacter)&&characterCheck == 0){
	buttonType = ButtonType.house;
	Button++;
	characterCheck = 1;
}

//create empty debug buttons
if(ObjGame.debugToggle == 1){
	if(instance_exists(ObjButton)){
		var _prev = instance_furthest(x,y,ObjButton);
		if(keyboard_check_pressed(ord("N"))){
			with(_prev){
				instance_destroy(self);
			}
			buttonMax++;
		}
	}
	if(Button < buttonMax && keyboard_check_pressed(ord("B"))){
		Button++;
	}
}






