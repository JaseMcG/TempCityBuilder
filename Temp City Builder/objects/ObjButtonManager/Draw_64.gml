/// @description Insert description here
// You can write your code in this editor
var offsetadgjustx = -global.startingOffset/2 + -global.startingOffset;
var offsetadgjusty = -global.startingOffset/2;
//offsetadgjustx -= global.startingOffset;

offsetadgjusty += 1;

//start button
if(startButton){
	offsetadgjustx += 1;
	draw_sprite_ext(SprButtons,startFrame,XOffset*offsetadgjustx,YOffset*offsetadgjusty+Height-(buttonSize*2),
						global.GameSize,global.GameSize,0,c_white,1);
	draw_sprite_ext(startSprite,0,XOffset*offsetadgjustx,YOffset*offsetadgjusty+Height-(buttonSize*2),
						global.GameSize,global.GameSize,0,c_white,1);
	if(ObjGame.debugToggle == true){
		if(startFrame != 0){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_rectangle(XOffset*offsetadgjustx,YOffset*offsetadgjusty+Height-(buttonSize*2),
						XOffset*offsetadgjustx+buttonSize,YOffset*offsetadgjusty+Height-buttonSize,1);
	}
}

//hut button
if(hutButton){
	offsetadgjustx += 1;
	draw_sprite_ext(SprButtons,hutFrame,XOffset*offsetadgjustx,YOffset*offsetadgjusty+Height-(buttonSize*2),
						global.GameSize,global.GameSize,0,c_white,1);
	draw_sprite_ext(hutSprite,0,XOffset*offsetadgjustx,YOffset*offsetadgjusty+Height-(buttonSize*2),
						global.GameSize,global.GameSize,0,c_white,1);
	if(ObjGame.debugToggle == true){
		if(hutFrame != 0){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_rectangle(XOffset*offsetadgjustx,YOffset*offsetadgjusty+Height-(buttonSize*2),
						XOffset*offsetadgjustx+buttonSize,YOffset*offsetadgjusty+Height-buttonSize,1);
	}
}

//gathering button
if(gatheringButton){
	offsetadgjustx += 1;
	//if(!hutButton){offsetadgjustx += global.startingOffset;}else offsetadgjustx += 1;
	draw_sprite_ext(SprButtons,gatheringFrame,XOffset*offsetadgjustx,YOffset*offsetadgjusty+Height-(buttonSize*2),
						global.GameSize,global.GameSize,0,c_white,1);
	draw_sprite_ext(gatheringSprite,0,XOffset*offsetadgjustx,YOffset*offsetadgjusty+Height-(buttonSize*2),
						global.GameSize,global.GameSize,0,c_white,1);
	if(ObjGame.debugToggle == true){
		if(gatheringFrame != 0){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_rectangle(XOffset*offsetadgjustx,YOffset*offsetadgjusty+Height-(buttonSize*2),
						XOffset*offsetadgjustx+buttonSize,YOffset*offsetadgjusty+Height-buttonSize,1);
	}
}

//chopping button
if(choppingButton){
	offsetadgjustx += 1;
	//if(!hutButton){offsetadgjustx += global.startingOffset;}else offsetadgjustx += 1;
	draw_sprite_ext(SprButtons,choppingFrame,XOffset*offsetadgjustx,YOffset*offsetadgjusty+Height-(buttonSize*2),
						global.GameSize,global.GameSize,0,c_white,1);
	draw_sprite_ext(choppingSprite,0,XOffset*offsetadgjustx,YOffset*offsetadgjusty+Height-(buttonSize*2),
						global.GameSize,global.GameSize,0,c_white,1);
	if(ObjGame.debugToggle == true){
		if(choppingFrame != 0){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_rectangle(XOffset*offsetadgjustx,YOffset*offsetadgjusty+Height-(buttonSize*2),
						XOffset*offsetadgjustx+buttonSize,YOffset*offsetadgjusty+Height-buttonSize,1);
	}
}

//picking button
if(pickingButton){
	offsetadgjustx += 1;
	draw_sprite_ext(SprButtons,pickingFrame,XOffset*offsetadgjustx,YOffset*offsetadgjusty+Height-(buttonSize*2),
						global.GameSize,global.GameSize,0,c_white,1);
	draw_sprite_ext(pickingSprite,0,XOffset*offsetadgjustx,YOffset*offsetadgjusty+Height-(buttonSize*2),
						global.GameSize,global.GameSize,0,c_white,1);
	if(ObjGame.debugToggle == true){
		if(pickingFrame != 0){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_rectangle(XOffset*offsetadgjustx,YOffset*offsetadgjusty+Height-(buttonSize*2),
						XOffset*offsetadgjustx+buttonSize,YOffset*offsetadgjusty+Height-buttonSize,1);
	}
}

//study button
if(studyButton){
	offsetadgjustx += 1;
	draw_sprite_ext(SprButtons,studyFrame,XOffset*offsetadgjustx,YOffset*offsetadgjusty+Height-(buttonSize*2),
						global.GameSize,global.GameSize,0,c_white,1);
	draw_sprite_ext(studySprite,0,XOffset*offsetadgjustx,YOffset*offsetadgjusty+Height-(buttonSize*2),
						global.GameSize,global.GameSize,0,c_white,1);
	if(ObjGame.debugToggle == true){
		if(studyFrame != 0){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_rectangle(XOffset*offsetadgjustx,YOffset*offsetadgjusty+Height-(buttonSize*2),
						XOffset*offsetadgjustx+buttonSize,YOffset*offsetadgjusty+Height-buttonSize,1);
	}
}

//upgrade button
if(upgradeButton){
	offsetadgjustx += 1;
	draw_sprite_ext(SprButtons,upgradeFrame,XOffset*offsetadgjustx,YOffset*offsetadgjusty+Height-(buttonSize*2),
						global.GameSize,global.GameSize,0,c_white,1);
	draw_sprite_ext(upgradeSprite,0,XOffset*offsetadgjustx,YOffset*offsetadgjusty+Height-(buttonSize*2),
						global.GameSize,global.GameSize,0,c_white,1);
	if(ObjGame.debugToggle == true){
		if(upgradeFrame != 0){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_rectangle(XOffset*offsetadgjustx,YOffset*offsetadgjusty+Height-(buttonSize*2),
						XOffset*offsetadgjustx+buttonSize,YOffset*offsetadgjusty+Height-buttonSize,1);
	}
}

//destroy button
if(destroyButton){
	offsetadgjustx += 1;
	draw_sprite_ext(SprButtons,destroyFrame,XOffset*offsetadgjustx,YOffset*offsetadgjusty+Height-(buttonSize*2),
						global.GameSize,global.GameSize,0,c_white,1);
	draw_sprite_ext(destroySprite,0,XOffset*offsetadgjustx,YOffset*offsetadgjusty+Height-(buttonSize*2),
						global.GameSize,global.GameSize,0,c_white,1);
	if(ObjGame.debugToggle == true){
		if(destroyFrame != 0){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_rectangle(XOffset*offsetadgjustx,YOffset*offsetadgjusty+Height-(buttonSize*2),
						XOffset*offsetadgjustx+buttonSize,YOffset*offsetadgjusty+Height-buttonSize,1);
	}
}

draw_set_color(c_white);
