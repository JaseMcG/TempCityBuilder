/// @description Insert description here
// You can write your code in this editor


#region draw resource cost

var offsetadgjustx = -global.startingOffset;
var offsetadgjusty = -global.startingOffset;
var xadjust = 1.5;
var s = 4;//global.GameSize;
var d = 3 * global.GameSize;

draw_set_font(global.fontMedW);

offsetadgjustx += 2;
offsetadgjusty -= 2;

if(mouseHeld != Building.none){
	if(foodCost != 0){
		draw_sprite_ext(SprIconFood,0,heldX + XOffset*offsetadgjustx,heldY + YOffset*offsetadgjusty,
						global.GameSize,global.GameSize,0,c_white,1);
		offsetadgjustx += xadjust;			
		draw_text_transformed(heldX + XOffset*offsetadgjustx,heldY + YOffset*offsetadgjusty - d,
								string(foodCost*-1),s,s,0);
		offsetadgjustx -= xadjust;
		offsetadgjusty += 1;
	}
	if(happyCost != 0){
		draw_sprite_ext(SprIconHappy,0,heldX + XOffset*offsetadgjustx,heldY + YOffset*offsetadgjusty,
						global.GameSize,global.GameSize,0,c_white,1);
		offsetadgjustx += xadjust;			
		draw_text_transformed(heldX + XOffset*offsetadgjustx,heldY + YOffset*offsetadgjusty - d,
								string(happyCost*-1),s,s,0);
		offsetadgjustx -= xadjust;
		offsetadgjusty += 1;
	}
	if(wealthCost != 0){//wealth not implemented yet
		draw_sprite_ext(SprIconHappy,0,heldX + XOffset*offsetadgjustx,heldY + YOffset*offsetadgjusty,//change icon
						global.GameSize,global.GameSize,0,c_white,1);
		offsetadgjustx += xadjust;			
		draw_text_transformed(heldX + XOffset*offsetadgjustx,heldY + YOffset*offsetadgjusty - d,
								string(wealthCost*-1),s,s,0);
		offsetadgjustx -= xadjust;
		offsetadgjusty += 1;
	}
	if(lumberCost != 0){
		draw_sprite_ext(SprIconWood,0,heldX + XOffset*offsetadgjustx,heldY + YOffset*offsetadgjusty,
						global.GameSize,global.GameSize,0,c_white,1);
		offsetadgjustx += xadjust;			
		draw_text_transformed(heldX + XOffset*offsetadgjustx,heldY + YOffset*offsetadgjusty - d,
								string(lumberCost*-1),s,s,0);
		offsetadgjustx -= xadjust;
		offsetadgjusty += 1;
	}
	if(stoneCost != 0){
		draw_sprite_ext(SprIconStone,0,heldX + XOffset*offsetadgjustx,heldY + YOffset*offsetadgjusty,
						global.GameSize,global.GameSize,0,c_white,1);
		offsetadgjustx += xadjust;			
		draw_text_transformed(heldX + XOffset*offsetadgjustx,heldY + YOffset*offsetadgjusty - d,
								string(stoneCost*-1),s,s,0);
		offsetadgjustx -= xadjust;
		offsetadgjusty += 1;
	}
	if(researchCost != 0){
		draw_sprite_ext(SprIconResearch,0,heldX + XOffset*offsetadgjustx,heldY + YOffset*offsetadgjusty,
						global.GameSize,global.GameSize,0,c_white,1);
		offsetadgjustx += xadjust;			
		draw_text_transformed(heldX + XOffset*offsetadgjustx,heldY + YOffset*offsetadgjusty - d,
								string(researchCost*-1),s,s,0);
		offsetadgjustx -= xadjust;
		offsetadgjusty += 1;
	}
}

#endregion

#region draw Building

if(mouseHeld  != Building.none && global.GamePaused == -1){
	if(colRangeSprite != 0 && canBuild != 1){heldColour = c_red;}else heldColour = c_white;
	if(colRangeSprite != 0){
		draw_sprite_ext(colRangeSprite,0,heldX,heldY+heldYOffset,
						global.GameSize,global.GameSize,0,heldColour,.5);
	}
	//if(heldObj != 0){
		draw_sprite_ext(heldSprite,Frame,heldX,heldY+heldYOffset,
						global.GameSize*Facing,global.GameSize,0,heldColour,heldAlpha);
	//}
	//if(heldObj == 0){
	//	draw_sprite_ext(heldSprite,Frame,mouse_x,mouse_y,
	//					global.GameSize*Facing,global.GameSize,0,heldColour,heldAlpha);
	//}
	
	if(ObjGame.debugToggle == true){
		if(entityCol){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_circle(heldX,heldY+heldYOffset,entityColRange,1);
		draw_set_color(c_white);
		//build area
		draw_rectangle(0,ObjKindomManager.YOffset*(3),
					Width,Height-ObjButtonManager.YOffset*(1.5),1);
	}
	
}

#endregion

#region draw hotkey button

if(instance_exists(ObjButtonManager)){
	if(ObjButtonManager.hotKey != -1){
		//draw_sprite() //make hot key sprite
		draw_set_font(global.fontMedW);
		draw_set_color(c_dkgrey);
		
		draw_text_transformed(heldX+32,heldY,"key: " + string(key_to_string(ObjButtonManager.hotKey)), 2, 2, 0);
	
		draw_set_color(c_white);
	}
}

#endregion

//draw_sprite_ext(Sprite,Frame,mouse_x,mouse_y,global.GameSize,global.GameSize,0,c_white,1);

draw_sprite_ext(Sprite,Frame,heldX,heldY,global.GameSize,global.GameSize,0,c_white,1);


if(ObjGame.debugToggle == 1){
	draw_sprite_ext(SprMouseDebug,0,mouse_x,mouse_y,global.GameSize,global.GameSize,0,c_white,1);
	//draw_self();
}






