/// @description Insert description here
// You can write your code in this editor

//every placable button
var offsetadgjust = -global.startingOffset;
if(global.m2Release){//reset selected button
	buttonSelected = Building.none;
	ObjMouse.mouseHeld = Building.none;
}
//start button
if(startButton){
	offsetadgjust += 1;
	var mouse_colide = point_in_rectangle(mouse_x,mouse_y,
						XOffset*offsetadgjust,YOffset,
						XOffset*offsetadgjust+buttonSize,YOffset+buttonSize);
	if (mouse_colide == true){
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
		if(!global.m1Release){
			ObjMouse.mouseHeld = Building.start;
		}
	}
	
	if(instance_exists(ObjTownStart)){
		startButton = 0;
		ObjMouse.mouseHeld = Building.none;
	}
}

//hut button
if(hutButton){
	offsetadgjust += 1;
	var mouse_colide = point_in_rectangle(mouse_x,mouse_y,
						XOffset*offsetadgjust,YOffset,
						XOffset*offsetadgjust+buttonSize,YOffset+buttonSize);
	if (mouse_colide == true){
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
	}
	

}

//gathering button
if(gatheringButton){
	offsetadgjust += 1;
	//if(!hutButton){offsetadgjust += global.startingOffset;}else offsetadgjust += 1;
	var mouse_colide = point_in_rectangle(mouse_x,mouse_y,
						XOffset*offsetadgjust,YOffset,
						XOffset*offsetadgjust+buttonSize,YOffset+buttonSize);
	if (mouse_colide == true){
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
	}
	

}

//chopping button
if(choppingButton){
	offsetadgjust += 1;
	//if(!hutButton){offsetadgjust += global.startingOffset;}else offsetadgjust += 1;
	var mouse_colide = point_in_rectangle(mouse_x,mouse_y,
						XOffset*offsetadgjust,YOffset,
						XOffset*offsetadgjust+buttonSize,YOffset+buttonSize);
	if (mouse_colide == true){
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
	}
	

}

//picking button
if(pickingButton){
	offsetadgjust += 1;
	var mouse_colide = point_in_rectangle(mouse_x,mouse_y,
						XOffset*offsetadgjust,YOffset,
						XOffset*offsetadgjust+buttonSize,YOffset+buttonSize);
	if (mouse_colide == true){
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
	}
	

}

//study button
if(studyButton){
	offsetadgjust += 1;
	var mouse_colide = point_in_rectangle(mouse_x,mouse_y,
						XOffset*offsetadgjust,YOffset,
						XOffset*offsetadgjust+buttonSize,YOffset+buttonSize);
	if (mouse_colide == true){
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
	}
	

}

//upgrade button
if(upgradeButton){
	offsetadgjust += 1;
	var mouse_colide = point_in_rectangle(mouse_x,mouse_y,
						XOffset*offsetadgjust,YOffset,
						XOffset*offsetadgjust+buttonSize,YOffset+buttonSize);
	if (mouse_colide == true){
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
	}
	

}

//destroy button
if(destroyButton){
	offsetadgjust += 1;
	var mouse_colide = point_in_rectangle(mouse_x,mouse_y,
						XOffset*offsetadgjust,YOffset,
						XOffset*offsetadgjust+buttonSize,YOffset+buttonSize);
	if (mouse_colide == true){
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
	}
	

}





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






