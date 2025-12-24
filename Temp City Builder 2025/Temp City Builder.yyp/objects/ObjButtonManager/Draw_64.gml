/// @description Insert description here
// You can write your code in this editor
var offsetadgjustx = -global.startingOffset;
var offsetadgjusty = -global.startingOffset;
//offsetadgjustx -= global.startingOffset;
//offsetadgjustx -= .5;
offsetadgjusty += 2;

var v = 7 * global.GameSize; //vertical adjustment that isnt modified by other vars
var h = 7 * global.GameSize; //horizontal adjustment that isnt modified by other vars

//Border
if(ObjMenu.gameStart == true){
	var d = 21 * global.GameSize; // adjustment that isnt modified by other vars
	draw_sprite_stretched_ext(SprUIBorder,0,1*global.GameSize,Height-d,Width-(2*global.GameSize),d-4,c_white,.8);
	
}

#region draw buttons
//start button
if(startButton){
	offsetadgjustx += 1;
	draw_sprite_ext(SprButtons,startFrame,(XOffset*offsetadgjustx)-h,(Height+v)-(YOffset*offsetadgjusty),
						global.GameSize,global.GameSize,0,c_white,1);
	draw_sprite_ext(startSprite,0,(XOffset*offsetadgjustx)-h,(Height+v)-(YOffset*offsetadgjusty),
						global.GameSize,global.GameSize,0,c_white,1);
	if(ObjGame.debugToggle == true){
		if(startFrame != 0){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_rectangle((XOffset*offsetadgjustx)-h+2,(Height+v)-(YOffset*offsetadgjusty)+2,
						(XOffset*offsetadgjustx)-h+buttonSize-4,(Height+v)-(YOffset*offsetadgjusty)+buttonSize-4,1);
	}
}

//hut button
if(hutButton){
	offsetadgjustx += 1;
	draw_sprite_ext(SprButtons,hutFrame,(XOffset*offsetadgjustx)-h,(Height+v)-(YOffset*offsetadgjusty),
						global.GameSize,global.GameSize,0,c_white,1);
	draw_sprite_ext(hutSprite,0,(XOffset*offsetadgjustx)-h,(Height+v)-(YOffset*offsetadgjusty),
						global.GameSize,global.GameSize,0,c_white,1);
	if(ObjGame.debugToggle == true){
		if(hutFrame != 0){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_rectangle((XOffset*offsetadgjustx)-h+2,(Height+v)-(YOffset*offsetadgjusty)+2,
						(XOffset*offsetadgjustx)-h+buttonSize-4,(Height+v)-(YOffset*offsetadgjusty)+buttonSize-4,1);
	}
}

//gathering button
if(gatheringButton){
	offsetadgjustx += 1;
	//if(!hutButton){offsetadgjustx += global.startingOffset;}else offsetadgjustx += 1;
	draw_sprite_ext(SprButtons,gatheringFrame,(XOffset*offsetadgjustx)-h,(Height+v)-(YOffset*offsetadgjusty),
						global.GameSize,global.GameSize,0,c_white,1);
	draw_sprite_ext(gatheringSprite,0,(XOffset*offsetadgjustx)-h,(Height+v)-(YOffset*offsetadgjusty),
						global.GameSize,global.GameSize,0,c_white,1);
	if(ObjGame.debugToggle == true){
		if(gatheringFrame != 0){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_rectangle((XOffset*offsetadgjustx)-h+2,(Height+v)-(YOffset*offsetadgjusty)+2,
						(XOffset*offsetadgjustx)-h+buttonSize-4,(Height+v)-(YOffset*offsetadgjusty)+buttonSize-4,1);
	}
}

//chopping button
if(choppingButton){
	offsetadgjustx += 1;
	//if(!hutButton){offsetadgjustx += global.startingOffset;}else offsetadgjustx += 1;
	draw_sprite_ext(SprButtons,choppingFrame,(XOffset*offsetadgjustx)-h,(Height+v)-(YOffset*offsetadgjusty),
						global.GameSize,global.GameSize,0,c_white,1);
	draw_sprite_ext(choppingSprite,0,(XOffset*offsetadgjustx)-h,(Height+v)-(YOffset*offsetadgjusty),
						global.GameSize,global.GameSize,0,c_white,1);
	if(ObjGame.debugToggle == true){
		if(choppingFrame != 0){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_rectangle((XOffset*offsetadgjustx)-h+2,(Height+v)-(YOffset*offsetadgjusty)+2,
						(XOffset*offsetadgjustx)-h+buttonSize-4,(Height+v)-(YOffset*offsetadgjusty)+buttonSize-4,1);
	}
}

//picking button
if(pickingButton){
	offsetadgjustx += 1;
	draw_sprite_ext(SprButtons,pickingFrame,(XOffset*offsetadgjustx)-h,(Height+v)-(YOffset*offsetadgjusty),
						global.GameSize,global.GameSize,0,c_white,1);
	draw_sprite_ext(pickingSprite,0,(XOffset*offsetadgjustx)-h,(Height+v)-(YOffset*offsetadgjusty),
						global.GameSize,global.GameSize,0,c_white,1);
	if(ObjGame.debugToggle == true){
		if(pickingFrame != 0){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_rectangle((XOffset*offsetadgjustx)-h+2,(Height+v)-(YOffset*offsetadgjusty)+2,
						(XOffset*offsetadgjustx)-h+buttonSize-4,(Height+v)-(YOffset*offsetadgjusty)+buttonSize-4,1);
	}
}

//study button
if(studyButton){
	offsetadgjustx += 1;
	draw_sprite_ext(SprButtons,studyFrame,(XOffset*offsetadgjustx)-h,(Height+v)-(YOffset*offsetadgjusty),
						global.GameSize,global.GameSize,0,c_white,1);
	draw_sprite_ext(studySprite,0,(XOffset*offsetadgjustx)-h,(Height+v)-(YOffset*offsetadgjusty),
						global.GameSize,global.GameSize,0,c_white,1);
	if(ObjGame.debugToggle == true){
		if(studyFrame != 0){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_rectangle((XOffset*offsetadgjustx)-h+2,(Height+v)-(YOffset*offsetadgjusty)+2,
						(XOffset*offsetadgjustx)-h+buttonSize-4,(Height+v)-(YOffset*offsetadgjusty)+buttonSize-4,1);
	}
}

//upgrade button
if(upgradeButton){
	offsetadgjustx += 1;
	draw_sprite_ext(SprButtons,upgradeFrame,(XOffset*offsetadgjustx)-h,(Height+v)-(YOffset*offsetadgjusty),
						global.GameSize,global.GameSize,0,c_white,1);
	draw_sprite_ext(upgradeSprite,0,(XOffset*offsetadgjustx)-h,(Height+v)-(YOffset*offsetadgjusty),
						global.GameSize,global.GameSize,0,c_white,1);
	if(ObjGame.debugToggle == true){
		if(upgradeFrame != 0){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_rectangle((XOffset*offsetadgjustx)-h+2,(Height+v)-(YOffset*offsetadgjusty)+2,
						(XOffset*offsetadgjustx)-h+buttonSize-4,(Height+v)-(YOffset*offsetadgjusty)+buttonSize-4,1);
	}
}

//destroy button
if(destroyButton){
	offsetadgjustx += 1;
	draw_sprite_ext(SprButtons,destroyFrame,(XOffset*offsetadgjustx)-h,(Height+v)-(YOffset*offsetadgjusty),
						global.GameSize,global.GameSize,0,c_white,1);
	draw_sprite_ext(destroySprite,0,(XOffset*offsetadgjustx)-h,(Height+v)-(YOffset*offsetadgjusty),
						global.GameSize,global.GameSize,0,c_white,1);
	if(ObjGame.debugToggle == true){
		if(destroyFrame != 0){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_rectangle((XOffset*offsetadgjustx)-h+2,(Height+v)-(YOffset*offsetadgjusty)+2,
						(XOffset*offsetadgjustx)-h+buttonSize-4,(Height+v)-(YOffset*offsetadgjusty)+buttonSize-4,1);
	}
}

#endregion



draw_set_color(c_white);
