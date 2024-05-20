/// @description Insert description here
// You can write your code in this editor
var offsetadgjust = -global.startingOffset;
//offsetadgjust -= global.startingOffset;

//start button
if(startButton){
	offsetadgjust += 1;
	draw_sprite_ext(SprButtons,startFrame,XOffset*offsetadgjust,YOffset,
						global.GameSize,global.GameSize,0,c_white,1);
	draw_sprite_ext(startSprite,0,XOffset*offsetadgjust,YOffset,
						global.GameSize,global.GameSize,0,c_white,1);
	if(ObjGame.debugToggle == true){
		if(startFrame != 0){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_rectangle(XOffset*offsetadgjust,YOffset,
						XOffset*offsetadgjust+buttonSize,YOffset+buttonSize,1);
	}
}

//hut button
if(hutButton){
	offsetadgjust += 1;
	draw_sprite_ext(SprButtons,hutFrame,XOffset*offsetadgjust,YOffset,
						global.GameSize,global.GameSize,0,c_white,1);
	draw_sprite_ext(hutSprite,0,XOffset*offsetadgjust,YOffset,
						global.GameSize,global.GameSize,0,c_white,1);
	if(ObjGame.debugToggle == true){
		if(hutFrame != 0){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_rectangle(XOffset*offsetadgjust,YOffset,
						XOffset*offsetadgjust+buttonSize,YOffset+buttonSize,1);
	}
}

//gathering button
if(gatheringButton){
	offsetadgjust += 1;
	//if(!hutButton){offsetadgjust += global.startingOffset;}else offsetadgjust += 1;
	draw_sprite_ext(SprButtons,gatheringFrame,XOffset*offsetadgjust,YOffset,
						global.GameSize,global.GameSize,0,c_white,1);
	draw_sprite_ext(gatheringSprite,0,XOffset*offsetadgjust,YOffset,
						global.GameSize,global.GameSize,0,c_white,1);
	if(ObjGame.debugToggle == true){
		if(gatheringFrame != 0){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_rectangle(XOffset*offsetadgjust,YOffset,
						XOffset*offsetadgjust+buttonSize,YOffset+buttonSize,1);
	}
}

//chopping button
if(choppingButton){
	offsetadgjust += 1;
	//if(!hutButton){offsetadgjust += global.startingOffset;}else offsetadgjust += 1;
	draw_sprite_ext(SprButtons,choppingFrame,XOffset*offsetadgjust,YOffset,
						global.GameSize,global.GameSize,0,c_white,1);
	draw_sprite_ext(choppingSprite,0,XOffset*offsetadgjust,YOffset,
						global.GameSize,global.GameSize,0,c_white,1);
	if(ObjGame.debugToggle == true){
		if(choppingFrame != 0){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_rectangle(XOffset*offsetadgjust,YOffset,
						XOffset*offsetadgjust+buttonSize,YOffset+buttonSize,1);
	}
}

//picking button
if(pickingButton){
	offsetadgjust += 1;
	draw_sprite_ext(SprButtons,pickingFrame,XOffset*offsetadgjust,YOffset,
						global.GameSize,global.GameSize,0,c_white,1);
	draw_sprite_ext(pickingSprite,0,XOffset*offsetadgjust,YOffset,
						global.GameSize,global.GameSize,0,c_white,1);
	if(ObjGame.debugToggle == true){
		if(pickingFrame != 0){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_rectangle(XOffset*offsetadgjust,YOffset,
						XOffset*offsetadgjust+buttonSize,YOffset+buttonSize,1);
	}
}

//study button
if(studyButton){
	offsetadgjust += 1;
	draw_sprite_ext(SprButtons,studyFrame,XOffset*offsetadgjust,YOffset,
						global.GameSize,global.GameSize,0,c_white,1);
	draw_sprite_ext(studySprite,0,XOffset*offsetadgjust,YOffset,
						global.GameSize,global.GameSize,0,c_white,1);
	if(ObjGame.debugToggle == true){
		if(studyFrame != 0){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_rectangle(XOffset*offsetadgjust,YOffset,
						XOffset*offsetadgjust+buttonSize,YOffset+buttonSize,1);
	}
}

//upgrade button
if(upgradeButton){
	offsetadgjust += 1;
	draw_sprite_ext(SprButtons,upgradeFrame,XOffset*offsetadgjust,YOffset,
						global.GameSize,global.GameSize,0,c_white,1);
	draw_sprite_ext(upgradeSprite,0,XOffset*offsetadgjust,YOffset,
						global.GameSize,global.GameSize,0,c_white,1);
	if(ObjGame.debugToggle == true){
		if(upgradeFrame != 0){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_rectangle(XOffset*offsetadgjust,YOffset,
						XOffset*offsetadgjust+buttonSize,YOffset+buttonSize,1);
	}
}

//destroy button
if(destroyButton){
	offsetadgjust += 1;
	draw_sprite_ext(SprButtons,destroyFrame,XOffset*offsetadgjust,YOffset,
						global.GameSize,global.GameSize,0,c_white,1);
	draw_sprite_ext(destroySprite,0,XOffset*offsetadgjust,YOffset,
						global.GameSize,global.GameSize,0,c_white,1);
	if(ObjGame.debugToggle == true){
		if(destroyFrame != 0){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_rectangle(XOffset*offsetadgjust,YOffset,
						XOffset*offsetadgjust+buttonSize,YOffset+buttonSize,1);
	}
}

draw_set_color(c_white);
