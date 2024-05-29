/// @description Insert description here
// You can write your code in this editor


#region draw resource cost

var offsetadgjustx = -global.startingOffset;
var offsetadgjusty = -global.startingOffset;
var xadjust = 1.5;
draw_set_font(FonPixelUI);

offsetadgjustx += 2;
offsetadgjusty -= 2;

if(mouseHeld != Building.none){
	if(foodCost != 0){
		draw_sprite_ext(SprIconFood,0,heldX + XOffset*offsetadgjustx,heldY + YOffset*offsetadgjusty,
						global.GameSize,global.GameSize,0,c_white,1);
		offsetadgjustx += xadjust;			
		draw_text_transformed(heldX + XOffset*offsetadgjustx,heldY + YOffset*offsetadgjusty,
								string(foodCost*-1),1,1,0);
		offsetadgjustx -= xadjust;
		offsetadgjusty += 1;
	}
	if(happyCost != 0){
		draw_sprite_ext(SprIconHappy,0,heldX + XOffset*offsetadgjustx,heldY + YOffset*offsetadgjusty,
						global.GameSize,global.GameSize,0,c_white,1);
		offsetadgjustx += xadjust;			
		draw_text_transformed(heldX + XOffset*offsetadgjustx,heldY + YOffset*offsetadgjusty,
								string(happyCost*-1),1,1,0);
		offsetadgjustx -= xadjust;
		offsetadgjusty += 1;
	}
	if(wealthCost != 0){//wealth not implemented yet
		draw_sprite_ext(SprIconHappy,0,heldX + XOffset*offsetadgjustx,heldY + YOffset*offsetadgjusty,//change icon
						global.GameSize,global.GameSize,0,c_white,1);
		offsetadgjustx += xadjust;			
		draw_text_transformed(heldX + XOffset*offsetadgjustx,heldY + YOffset*offsetadgjusty,
								string(wealthCost*-1),1,1,0);
		offsetadgjustx -= xadjust;
		offsetadgjusty += 1;
	}
	if(lumberCost != 0){
		draw_sprite_ext(SprIconWood,0,heldX + XOffset*offsetadgjustx,heldY + YOffset*offsetadgjusty,
						global.GameSize,global.GameSize,0,c_white,1);
		offsetadgjustx += xadjust;			
		draw_text_transformed(heldX + XOffset*offsetadgjustx,heldY + YOffset*offsetadgjusty,
								string(lumberCost*-1),1,1,0);
		offsetadgjustx -= xadjust;
		offsetadgjusty += 1;
	}
	if(stoneCost != 0){
		draw_sprite_ext(SprIconStone,0,heldX + XOffset*offsetadgjustx,heldY + YOffset*offsetadgjusty,
						global.GameSize,global.GameSize,0,c_white,1);
		offsetadgjustx += xadjust;			
		draw_text_transformed(heldX + XOffset*offsetadgjustx,heldY + YOffset*offsetadgjusty,
								string(stoneCost*-1),1,1,0);
		offsetadgjustx -= xadjust;
		offsetadgjusty += 1;
	}
	if(researchCost != 0){
		draw_sprite_ext(SprIconResearch,0,heldX + XOffset*offsetadgjustx,heldY + YOffset*offsetadgjusty,
						global.GameSize,global.GameSize,0,c_white,1);
		offsetadgjustx += xadjust;			
		draw_text_transformed(heldX + XOffset*offsetadgjustx,heldY + YOffset*offsetadgjusty,
								string(researchCost*-1),1,1,0);
		offsetadgjustx -= xadjust;
		offsetadgjusty += 1;
	}
}

#endregion

if(mouseHeld  != Building.none && global.GamePaused == -1){
	if(colRangeSprite != 0 && entityCol || !buildArea || canBuild == 0){heldColour = c_red;}else heldColour = c_white;
	if(colRangeSprite != 0){
		draw_sprite_ext(colRangeSprite,0,heldX,heldY,
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
		draw_circle(mouse_x,mouse_y,entityColRange,1);
		draw_set_color(c_white);
		draw_rectangle(0,ObjKindomManager.YOffset*(1+global.startingOffset*2),
					Width,Height-ObjButtonManager.YOffset*(1+global.startingOffset),1);
	}
	
}


//draw_sprite_ext(Sprite,Frame,mouse_x,mouse_y,global.GameSize,global.GameSize,0,c_white,1);

draw_sprite_ext(Sprite,Frame,heldX,heldY,global.GameSize,global.GameSize,0,c_white,1);


if(ObjGame.debugToggle == 1){
	draw_sprite_ext(SprMouseDebug,0,mouse_x,mouse_y,global.GameSize,global.GameSize,0,c_white,1);
	//draw_self();
}






