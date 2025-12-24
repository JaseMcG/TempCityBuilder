/// @description Insert description here
// You can write your code in this editor

//every placable button
var offsetadgjustx = -global.startingOffset;
var offsetadgjusty = -global.startingOffset;

offsetadgjusty += 2;

var v = 7 * global.GameSize; //vertical adjustment that isnt modified by other vars
var h = 7 * global.GameSize; //horizontal adjustment that isnt modified by other vars

if(global.m2Release){//reset selected button
	buttonSelected = Building.none;
	ObjMouse.mouseHeld = Building.none;
}

#region Buttons

mouseCollide = 0;
hotKey = -1;
//start button
if(startButton){
	var b = 0; //toggle for hotkey select / deselect
	offsetadgjustx += 1;
	mouseCollide = point_in_rectangle(mouse_x,mouse_y,
						(XOffset*offsetadgjustx)-h+2,(Height+v)-(YOffset*offsetadgjusty)+2,
						(XOffset*offsetadgjustx)-h+buttonSize-4,(Height+v)-(YOffset*offsetadgjusty)+buttonSize-4);
	if (mouseCollide == true){
		hotKey = ObjGame.house;
		startFrame = 1;
		if(global.m1 = 1){
			startFrame = 2;
		}
		if(global.m1Release){
			buttonSelected = Building.start;
		}
	}else startFrame = 0;
	if(buttonSelected == Building.start){
		startFrame += 3;
		if(!global.m1Release){//set mouse
			ObjMouse.mouseHeld = Building.start;
		}
		if(global.house && b == 0){//remove with hotkey
			b = 1;
			buttonSelected = Building.none;
			ObjMouse.mouseHeld = Building.none;
		}
	}
	if(!instance_exists(ObjTownStart)){//hotkey
		if(global.house && b == 0){
			b = 1;
			buttonSelected = Building.start;
		}
	}
	if(instance_exists(ObjTownStart)){//remove town start if it exists
		startButton = 0;
		ObjMouse.mouseHeld = Building.none;
	}
}

//hut button
if(hutButton){
	var b = 0; //toggle for hotkey select / deselect
	offsetadgjustx += 1;
	mouseCollide = point_in_rectangle(mouse_x,mouse_y,
						(XOffset*offsetadgjustx)-h+2,(Height+v)-(YOffset*offsetadgjusty)+2,
						(XOffset*offsetadgjustx)-h+buttonSize-4,(Height+v)-(YOffset*offsetadgjusty)+buttonSize-4);
	if (mouseCollide == true){
		hotKey = ObjGame.house;
		hutFrame = 1;
		if(global.m1 = 1){
			hutFrame = 2;
		}
		if(global.m1Release){
			buttonSelected = Building.hut;
		}
	}else hutFrame = 0;
	if(buttonSelected == Building.hut){
		hutFrame += 3;
		if(!global.m1Release){
			ObjMouse.mouseHeld = Building.hut;
		}
		if(global.house && b == 0){//remove with hotkey
			b = 1;
			buttonSelected = Building.none;
			ObjMouse.mouseHeld = Building.none;
		}
	}
	if(instance_exists(ObjTownStart)){//hotkey
		if(global.house && b == 0){
			b = 1;
			buttonSelected = Building.hut;
		}
	}

}

//gathering button
if(gatheringButton){
	var b = 0; //toggle for hotkey select / deselect
	offsetadgjustx += 1;
	//if(!hutButton){offsetadgjustx += global.startingOffset;}else offsetadgjustx += 1;
	mouseCollide = point_in_rectangle(mouse_x,mouse_y,
						(XOffset*offsetadgjustx)-h+2,(Height+v)-(YOffset*offsetadgjusty)+2,
						(XOffset*offsetadgjustx)-h+buttonSize-4,(Height+v)-(YOffset*offsetadgjusty)+buttonSize-4);
	if (mouseCollide == true){
		hotKey = ObjGame.gather;
		gatheringFrame = 1;
		if(global.m1 = 1){
			gatheringFrame = 2;
		}
		if(global.m1Release){
			buttonSelected = Building.gatheringhut;
		}
	}else gatheringFrame = 0;
	if(buttonSelected == Building.gatheringhut){
		gatheringFrame += 3;
		if(!global.m1Release){
			ObjMouse.mouseHeld = Building.gatheringhut;
		}
		if(global.gather && b == 0){//remove with hotkey
			b = 1;
			buttonSelected = Building.none;
			ObjMouse.mouseHeld = Building.none;
		}
	}
	if(global.gather && b == 0){
			b = 1;
			buttonSelected = Building.gatheringhut;
	}

}

//chopping button
if(choppingButton){
	var b = 0; //toggle for hotkey select / deselect
	offsetadgjustx += 1;
	//if(!hutButton){offsetadgjustx += global.startingOffset;}else offsetadgjustx += 1;
	mouseCollide = point_in_rectangle(mouse_x,mouse_y,
						(XOffset*offsetadgjustx)-h+2,(Height+v)-(YOffset*offsetadgjusty)+2,
						(XOffset*offsetadgjustx)-h+buttonSize-4,(Height+v)-(YOffset*offsetadgjusty)+buttonSize-4);
	if (mouseCollide == true){
		hotKey = ObjGame.chop;
		choppingFrame = 1;
		if(global.m1 = 1){
			choppingFrame = 2;
		}
		if(global.m1Release){
			buttonSelected = Building.choppinghut;
		}
	}else choppingFrame = 0;
	if(buttonSelected == Building.choppinghut){
		choppingFrame += 3;
		if(!global.m1Release){
			ObjMouse.mouseHeld = Building.choppinghut;
		}
		if(global.chop && b == 0){//remove with hotkey
			b = 1;
			buttonSelected = Building.none;
			ObjMouse.mouseHeld = Building.none;
		}
	}
	if(global.chop && b == 0){
			b = 1;
			buttonSelected = Building.choppinghut;
	}
	

}

//picking button
if(pickingButton){
	var b = 0; //toggle for hotkey select / deselect
	offsetadgjustx += 1;
	mouseCollide = point_in_rectangle(mouse_x,mouse_y,
						(XOffset*offsetadgjustx)-h+2,(Height+v)-(YOffset*offsetadgjusty)+2,
						(XOffset*offsetadgjustx)-h+buttonSize-4,(Height+v)-(YOffset*offsetadgjusty)+buttonSize-4);
	if (mouseCollide == true){
		hotKey = ObjGame.pick;
		pickingFrame = 1;
		if(global.m1 = 1){
			pickingFrame = 2;
		}
		if(global.m1Release){
			buttonSelected = Building.pickinghut;
		}
	}else pickingFrame = 0;
	if(buttonSelected == Building.pickinghut){
		pickingFrame += 3;
		if(!global.m1Release){
			ObjMouse.mouseHeld = Building.pickinghut;
		}
		if(global.pick && b == 0){//remove with hotkey
			b = 1;
			buttonSelected = Building.none;
			ObjMouse.mouseHeld = Building.none;
		}
	}
	if(global.pick && b == 0){
			b = 1;
			buttonSelected = Building.pickinghut;
	}

}

//study button
if(studyButton){
	var b = 0; //toggle for hotkey select / deselect
	offsetadgjustx += 1;
	mouseCollide = point_in_rectangle(mouse_x,mouse_y,
						(XOffset*offsetadgjustx)-h+2,(Height+v)-(YOffset*offsetadgjusty)+2,
						(XOffset*offsetadgjustx)-h+buttonSize-4,(Height+v)-(YOffset*offsetadgjusty)+buttonSize-4);
	if (mouseCollide == true){
		hotKey = ObjGame.study;
		studyFrame = 1;
		if(global.m1 = 1){
			studyFrame = 2;
		}
		if(global.m1Release){
			buttonSelected = Building.studyhut;
		}
	}else studyFrame = 0;
	if(buttonSelected == Building.studyhut){
		studyFrame += 3;
		if(!global.m1Release){
			ObjMouse.mouseHeld = Building.studyhut;
		}
		if(global.study && b == 0){//remove with hotkey
			b = 1;
			buttonSelected = Building.none;
			ObjMouse.mouseHeld = Building.none;
		}
	}
	if(global.study && b == 0){
			b = 1;
			buttonSelected = Building.studyhut;
	}

}

//upgrade button
if(upgradeButton){
	var b = 0; //toggle for hotkey select / deselect
	offsetadgjustx += 1;
	mouseCollide = point_in_rectangle(mouse_x,mouse_y,
						(XOffset*offsetadgjustx)-h+2,(Height+v)-(YOffset*offsetadgjusty)+2,
						(XOffset*offsetadgjustx)-h+buttonSize-4,(Height+v)-(YOffset*offsetadgjusty)+buttonSize-4);
	if (mouseCollide == true){
		hotKey = ObjGame.upgrade;
		upgradeFrame = 1;
		if(global.m1 = 1){
			upgradeFrame = 2;
		}
		if(global.m1Release){
			buttonSelected = Building.upgrade;
		}
	}else upgradeFrame = 0;
	if(buttonSelected == Building.upgrade){
		upgradeFrame += 3;
		if(!global.m1Release){
			ObjMouse.mouseHeld = Building.upgrade;
		}
		if(global.upgrade && b == 0){//remove with hotkey
			b = 1;
			buttonSelected = Building.none;
			ObjMouse.mouseHeld = Building.none;
		}
	}
	if(global.upgrade && b == 0){
			b = 1;
			buttonSelected = Building.upgrade;
	}

}

//destroy button
if(destroyButton){
	var b = 0; //toggle for hotkey select / deselect
	offsetadgjustx += 1;
	mouseCollide = point_in_rectangle(mouse_x,mouse_y,
						(XOffset*offsetadgjustx)-h+2,(Height+v)-(YOffset*offsetadgjusty)+2,
						(XOffset*offsetadgjustx)-h+buttonSize-4,(Height+v)-(YOffset*offsetadgjusty)+buttonSize-4);
	if (mouseCollide == true){
		hotKey = ObjGame.destroy;
		destroyFrame = 1;
		if(global.m1 = 1){
			destroyFrame = 2;
		}
		if(global.m1Release){
			buttonSelected = Building.destroy;
		}
	}else destroyFrame = 0;
	if(buttonSelected == Building.destroy){
		destroyFrame += 3;
		if(!global.m1Release){
			ObjMouse.mouseHeld = Building.destroy;
		}
		if(global.destroy && b == 0){//remove with hotkey
			b = 1;
			buttonSelected = Building.none;
			ObjMouse.mouseHeld = Building.none;
		}
	}
	if(global.destroy && b == 0){
			b = 1;
			buttonSelected = Building.destroy;
	}

}

#endregion



//button object creation. old

////create buttons
//buttonAmount = instance_number(ObjButton);
//if(Button > 0 && buttonMax > 0){
//	button = instance_create_layer(((buttonAmount+1)*20)*global.GameSize,Height-16*global.GameSize,"instances",ObjButton);
//	with(button){
//		buttonType = other.buttonType;
//	}
	
//	spawnX = spawnX + (26*global.GameSize);
	
//	Button--;
//	buttonMax--;
//}

////get a house button 
//if(instance_exists(ObjCharacter)&&characterCheck == 0){
//	buttonType = Building.hut;
//	Button++;
//	characterCheck = 1;
//}

////create empty debug buttons
//if(ObjGame.debugToggle == 1){
//	if(instance_exists(ObjButton)){
//		var _prev = instance_furthest(x,y,ObjButton);
//		if(keyboard_check_pressed(ord("N"))){
//			with(_prev){
//				instance_destroy(self);
//			}
//			buttonMax++;
//		}
//	}
//	if(Button < buttonMax && keyboard_check_pressed(ord("B"))){
//		Button++;
//	}
//}






