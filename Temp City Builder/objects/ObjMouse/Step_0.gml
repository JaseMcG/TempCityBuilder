/// @description Insert description here
// You can write your code in this editor


	foodCost		= 0;
	happyCost		= 0;
	lumberCost		= 0;
	stoneCost		= 0;
	wealthCost		= 0;
	researchCost	= 0;

	heldX		= floor((mouse_x / global.GameSize)) * global.GameSize;
	heldY		= floor((mouse_y / global.GameSize)) * global.GameSize;


if(mouseHeld != Building.none){
	
	//inputes
	if(global.rotate){
		Facing = Facing * -1;
	}
	
	#region switch held item
	switch (mouseHeld){
		case Building.human:
			heldSprite		= SprCharacter;
			heldObj			= ObjCharacter;
			entityColRange	= 8*global.GameSize;
			colRangeSprite	= SprAreaCol32;
			break;
		case Building.start:
			heldSprite		= SprStartingTent
			heldObj			= ObjTownStart;
			entityColRange	= 16*global.GameSize;
			colRangeSprite	= SprAreaCol64;
			//build cost
			foodCost		= 1;
			happyCost		= -5;
			lumberCost		= 1;
			stoneCost		= 1;
			break;
		case Building.hut:
			heldSprite		= SprHut
			heldObj			= ObjHut;
			entityColRange	= 8*global.GameSize;
			colRangeSprite	= SprAreaCol32;
			//build cost
			foodCost		= 2;
			lumberCost		= 3;
			stoneCost		= 1;
			break;
		case Building.gatheringhut:
			heldSprite		= SprGatheringHut;
			heldObj			= ObjGatheringHut;
			entityColRange	= 8*global.GameSize;
			colRangeSprite	= SprAreaCol32;
			//build cost
			lumberCost		= 2;
			stoneCost		= 2;
			happyCost		= 1;
			break;
		case Building.choppinghut:
			heldSprite		= SprChoppingHut;
			heldObj			= ObjChoppingHut;
			entityColRange	= 8*global.GameSize;
			colRangeSprite	= SprAreaCol32;
			//build cost
			lumberCost		= 2;
			stoneCost		= 3;
			happyCost		= 1;
			break;
		case Building.pickinghut:
			heldSprite		= SprPickingHut;
			heldObj			= ObjPickingHut;
			entityColRange	= 8*global.GameSize;
			colRangeSprite	= SprAreaCol32;
			//build cost
			lumberCost		= 2;
			stoneCost		= 3;
			happyCost		= 1;
			break;
		case Building.studyhut:
			heldSprite		= SprStudy;
			heldObj			= ObjStudy;
			entityColRange	= 8*global.GameSize;
			colRangeSprite	= SprAreaCol32;
			//build cost
			foodCost		= 2
			lumberCost		= 3;
			stoneCost		= 3;
			happyCost		= -2;
			break;
		case Building.upgrade:
			heldSprite		= SprMouseUpgrade;
			heldObj			= 0;
			entityColRange	= 0;
			colRangeSprite	= 0;
			//build cost
			break;
		case Building.destroy:
			heldSprite		= SprMouseDestroy;
			heldObj			= 0;
			entityColRange	= 0;
			colRangeSprite	= 0;
			//build cost
			break;
	}
	#endregion
	
	
	if(global.GamePaused == -1){

		var nearest = instance_nearest(mouse_x,mouse_y,ObjEntity);
		if(instance_exists(nearest)){
			entitiyCol	= point_in_circle(nearest.x,nearest.y,mouse_x,mouse_y,entityColRange);
		}
		buildArea	= point_in_rectangle(mouse_x,mouse_y,Border,Border,Width-Border,Height-Border-64);
		#region place held item

			if(global.m1 || heldObj == 0){heldAlpha = 1}else heldAlpha = .5;
			if(global.m1Release && heldObj != 0 && entitiyCol == false && buildArea == true){
				
				with(ObjKindomManager){
					if(Food >= other.foodCost && Lumber >= other.lumberCost && Stone >= other.stoneCost
					&& Wealth >= other.wealthCost && Happy >= other.happyCost && Research >= other.researchCost){
						other.canBuild = 1;
					}else other.canBuild = 0;
					if(other.canBuild == 1){
					Food		-= other.foodCost;
					Lumber		-= other.lumberCost;
					Stone		-= other.stoneCost;
					Wealth		-= other.wealthCost;
					Happy		-= other.happyCost;
					Research	-= other.researchCost;
					}
				}
				if(canBuild == 1){
					var _build = instance_create_layer(heldX,heldY+heldYOffset,"Instances",heldObj);
					with(_build){
						Facing = other.Facing;
					}
					mouseHeld = Building.none;
				}
			}
		
		
		#endregion
		
		#region upgrade item
		if(mouseHeld == Building.upgrade){
		
		}
		#endregion
		
		#region destroy item
		if(mouseHeld == Building.destroy){
			nearest = instance_nearest(mouse_x,mouse_y,ObjResources);
			with(nearest){
			Colour = c_blue;
			}
			if(global.m1Release && buildArea && instance_exists(ObjResources)){//add range here
				if(nearest.object_index == ObjOakTrees){
					ObjKindomManager.Lumber++;
				}
				if(nearest.object_index == ObjRocks){
					ObjKindomManager.Stone++;
				}
				if(nearest.object_index == ObjBerryBush){
					ObjKindomManager.Food++;
				}
				with(nearest){
					instance_destroy();
				}	
			}
		}
		#endregion
	}
		
	
}










