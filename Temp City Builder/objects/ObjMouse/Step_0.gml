/// @description Insert description here
// You can write your code in this editor

	Cost			= 0;
	foodCost		= 0;
	happyCost		= 0;
	wealthCost		= 0;
	lumberCost		= 0;
	stoneCost		= 0;	
	researchCost	= 0;
	
	genStrength		= 0;
	


	heldX		= floor((mouse_x / global.GameSize)) * global.GameSize;
	heldY		= floor((mouse_y / global.GameSize)) * global.GameSize;
	
	//x = mouse_x;
	//y = mouse_y;

if(mouseHeld != Building.none){
	
	//inputes
	if(global.rotate){
		Facing = Facing * -1;
	}
	
	
	#region switch held item
	switch (mouseHeld){
		case Building.none:
			heldSprite		= -1;
			heldObj			= -1;
			entityColRange	= 0;
			colRangeSprite	= -1;
			//build cost
			foodCost		= 0;
			lumberCost		= 0;
			stoneCost		= 0;
			//housing
			Housing			= 0;
			//gening
			genStrength		= 0;
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
			//happyCost		= -5;
			lumberCost		= 1;
			stoneCost		= 1;
			//housing
			Housing			= 3;
			//gening
			genStrength		= 0;
			break;
		case Building.hut:
			heldSprite		= SprHut
			heldObj			= ObjHut;
			entityColRange	= 8*global.GameSize;
			colRangeSprite	= SprAreaCol32;
			//build cost
			foodCost		= 10;
			lumberCost		= 2;
			stoneCost		= 2;
			//housing
			Housing			= 1;
			//gening
			genStrength		= 0;
			break;
		case Building.gatheringhut:
			heldSprite		= SprGatheringHut;
			heldObj			= ObjGatheringHut;
			entityColRange	= 8*global.GameSize;
			colRangeSprite	= SprAreaCol32;
			//build cost
			lumberCost		= 3;
			stoneCost		= 3;
			//happyCost		= 1;
			//housing
			Housing			= 0;
			//gening
			genStrength		= .5;
			break;
		case Building.choppinghut:
			heldSprite		= SprChoppingHut;
			heldObj			= ObjChoppingHut;
			entityColRange	= 8*global.GameSize;
			colRangeSprite	= SprAreaCol32;
			//build cost
			lumberCost		= 4;
			stoneCost		= 3;
			//happyCost		= 1;
			//housing
			Housing			= 0;
			//gening
			genStrength		= .5;
			break;
		case Building.pickinghut:
			heldSprite		= SprPickingHut;
			heldObj			= ObjPickingHut;
			entityColRange	= 8*global.GameSize;
			colRangeSprite	= SprAreaCol32;
			//build cost
			lumberCost		= 3;
			stoneCost		= 4;
			//happyCost		= 1;
			//housing
			Housing			= 0;
			//gening
			genStrength		= .5;
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
			//happyCost		= -2;
			//housing
			Housing			= 0;
			//gening
			genStrength		= 0;
			break;
		case Building.upgrade:
			heldSprite		= SprMouseUpgrade;
			heldObj			= -1;
			entityColRange	= 0;
			colRangeSprite	= 0;
			//build cost
			
			break;
		case Building.destroy:
			heldSprite		= SprMouseDestroy;
			heldObj			= -1;
			entityColRange	= 8*global.GameSize;
			colRangeSprite	= 0;
			//build cost
			break;
	}
	#endregion
	
	
	if(global.GamePaused == -1){

		var nearest = instance_nearest(heldX,heldY+heldYOffset,ObjEntity);
		if(instance_exists(nearest)){
			entityCol	= point_in_circle(nearest.x,nearest.y,heldX,heldY+heldYOffset,entityColRange);
		}
		buildArea	= point_in_rectangle(mouse_x,mouse_y,0,ObjKindomManager.YOffset*(1+global.startingOffset*2),
														Width,Height-ObjButtonManager.YOffset*(1+global.startingOffset));
		var water = position_meeting(heldX,heldY+heldYOffset,ObjWaterTiles);
		#region place held object

		//determine actual Cost
		Cost			= ceil((costIncrease * (instance_number(heldObj)+1)-1));
		foodCost		= foodCost * Cost;
		//happyCost		= 0;
		wealthCost		= wealthCost * Cost;
		lumberCost		= lumberCost * Cost;
		stoneCost		= stoneCost * Cost;	
		researchCost	= researchCost * Cost;
		
		canBuild = -1;
		if(global.m1 || heldObj == -1){heldAlpha = 1}else heldAlpha = .5;
		if(heldObj != -1 && entityCol == false && buildArea == true && water == false ){
				
				
				
			with(ObjKindomManager){
				if(Food >= other.foodCost && Lumber >= other.lumberCost && Stone >= other.stoneCost
				&& Wealth >= other.wealthCost && Happy >= other.happyCost && Research >= other.researchCost){
					other.canBuild = 1;
				}else other.canBuild = 0;
				
				if(global.m1Release && other.canBuild == 1){
				Food		-= other.foodCost;
				Lumber		-= other.lumberCost;
				Stone		-= other.stoneCost;
				Wealth		-= other.wealthCost;
				Happy		-= other.happyCost;
				Research	-= other.researchCost;
				}
			}
			if(global.m1Release && canBuild == 1){
				var _build = instance_create_layer(heldX,heldY+heldYOffset,"Instances",heldObj);
				with(_build){
					ds_list_add(global.BuildingList, self.id);
					Sprite = other.heldSprite;
					Facing = other.Facing;
					buildingType = other.mouseHeld;
					Housing = other.Housing;
					genStrength = other.genStrength;
						
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
			nearest = instance_nearest(heldX,heldY+heldYOffset,ObjEntity);
			if(instance_exists(nearest)){
				if(point_distance(heldX,heldY+heldYOffset, nearest.x, nearest.y) < entityColRange){
					with(nearest){
					Colour = c_red;
					}
					if(global.m1Release && buildArea && instance_exists(ObjResources)){
						if(nearest.object_index == ObjCharacter){
							//var i = ds_list_find_index(global.HumanList,nearest.id);
							ds_list_delete(global.HumanList, ds_list_find_index(global.HumanList,nearest.id));
							if(instance_exists(nearest.Home)){
								nearest.Home.Residents--;
							}
						}
						if(object_get_parent(nearest.object_index) == ObjBuilding){ 
							//var i = ds_list_find_index(global.BuildingList,nearest.id);
							ds_list_delete(global.BuildingList, ds_list_find_index(global.BuildingList,nearest.id));
						}
						if(nearest.object_index == ObjTrees){
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
			}
		}
		#endregion
	}
		
	
}










