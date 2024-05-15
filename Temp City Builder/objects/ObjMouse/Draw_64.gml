/// @description Insert description here
// You can write your code in this editor
if(heldSprite != HeldItem.none){
	if(entitiyCol || !buildArea){heldColour = c_red;}else heldColour = c_white;
	draw_sprite_ext(heldSprite,Frame,heldX,heldY+heldYOffset,
					global.GameSize,global.GameSize,0,heldColour,heldAlpha);
	if(ObjGame.debugToggle == true){
		if(entitiyCol){draw_set_color(c_yellow)}else draw_set_color(c_white);
		draw_circle(mouse_x,mouse_y,entityColRange,1);
		draw_set_color(c_white);
		draw_rectangle(Border,Border,Width-Border,Height-Border,1);
	}
	
}

draw_sprite_ext(Sprite,Frame,mouse_x,mouse_y,global.GameSize,global.GameSize,0,c_white,1);

if(ObjGame.debugToggle == 1){
	draw_sprite_ext(SprMouseDebug,0,mouse_x,mouse_y,global.GameSize,global.GameSize,0,c_white,1);
}






