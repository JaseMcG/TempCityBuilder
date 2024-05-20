/// @description Insert description here
// You can write your code in this editor
if(mouseHeld  != Building.none && global.GamePaused == -1){
	if(entitiyCol || !buildArea){heldColour = c_red;}else heldColour = c_white;
	if(entityColRange != 0){
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
		if(entitiyCol){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_circle(mouse_x,mouse_y,entityColRange,1);
		draw_set_color(c_white);
		draw_rectangle(Border,Border,Width-Border,Height-Border-64,1);
	}
	
}


//draw_sprite_ext(Sprite,Frame,mouse_x,mouse_y,global.GameSize,global.GameSize,0,c_white,1);

draw_sprite_ext(Sprite,Frame,heldX,heldY,global.GameSize,global.GameSize,0,c_white,1);


if(ObjGame.debugToggle == 1){
	draw_sprite_ext(SprMouseDebug,0,mouse_x,mouse_y,global.GameSize,global.GameSize,0,c_white,1);
}






