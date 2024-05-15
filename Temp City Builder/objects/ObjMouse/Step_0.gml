/// @description Insert description here
// You can write your code in this editor


if(mouseHeld != HeldItem.none){
	#region switch held item
	switch (mouseHeld){
		case HeldItem.human:
			heldSprite	= SprCharacter;
			heldObj		= ObjCharacter;	 
			break;
		case HeldItem.start:
			heldSprite	= SprStartingTent
			heldObj		= ObjTownStart;
			break;
		case HeldItem.hut:
			heldSprite	= SprHut
			heldObj		= 0;
			break;
		case HeldItem.choppinghut:
			heldSprite	= 0;
			heldObj		= 0;
			break;
		case HeldItem.pickinghut:
			heldSprite	= 0;
			heldObj		= 0;
			break;
		case HeldItem.studyhut:
			heldSprite	= 0;
			heldObj		= 0;
			break;
		case HeldItem.upgrade:
			heldSprite	= 0;
			heldObj		= 0;
			break;
	}
	#endregion
	
	#region place held item
	heldX		= floor((mouse_x / global.GameSize)) * global.GameSize;
	heldY		= floor((mouse_y / global.GameSize)) * global.GameSize;
	var nearest = instance_nearest(mouse_x,mouse_y,ObjEntity);
	if(instance_exists(nearest)){
		entitiyCol	= point_in_circle(nearest.x,nearest.y,mouse_x,mouse_y,entityColRange);
		buildArea	= point_in_rectangle(mouse_x,mouse_y,Border,Border,Width-Border,Height-Border);
		if(global.m1){heldAlpha = 1}else heldAlpha = .5;
		if(global.m1Release && entitiyCol == false && buildArea == true){
			instance_create_layer(heldX,heldY+heldYOffset,"Instances",heldObj);
			mouseHeld = HeldItem.none;
		}
	}
	#endregion
	
}










