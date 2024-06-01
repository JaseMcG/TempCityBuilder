/// @description Insert description here
// You can write your code in this editor
event_inherited();

//building
if(Built == 0){
	buildTime = buildTime+1*global.GameSpeed;
	if(buildTime >= timeToBuild){
		Built = 1;
		
		//if House
		if(Housing != 0){
		}
		//if generator
	}
}

if(Built == 1){
	
	//housing
	if(Housing != 0){
		
		//house human
		//if(ObjKindomManager.Housing <= instance_number(ObjCharacter)){
		if(Housing > Residents){
			for(i=0; i < ds_list_size(global.HumanList); i++){
				if(Housing > Residents){
					if(global.HumanList[| i].Home == 0){
						global.HumanList[| i].Home = self.id;
						other.Residents++;
					}
				}
			}
		}
		//}
		
		//generate human
		if(ObjKindomManager.Housing > instance_number(ObjCharacter)){
			
			if(Housing > Residents){
				housingTimer = housingTimer+1*global.GameSpeed;
				if(housingTimer >= housingTime){
					Residents++;
					housingTimer = 0;
					var n = 3;
					var human = instance_create_layer(x+irandom_range(-n,n)*global.GameSize,
					y+(8+irandom_range(-n,n))*global.GameSize,"Instances",ObjCharacter);
					with(human){
						Home = other.id;
						ds_list_add(global.HumanList,self.id);
					}
				
				}
			}
		}
		//starting castle
		if(buildingType == Building.start){
			if(initialRec == 0){
				with(ObjKindomManager){
					Food	+= 10;
					Lumber	+= 10;
					Stone	+= 10;
				}
				with(ObjButtonManager){
					//hutButton		= 1;
					//choppingButton	= 1;
					//pickingButton	= 1;
					//studyButton		= 1;
					//upgradeButton	= 1;
				}
				initialRec = 1;
			}
		}
	}
	
	
	// if generator
	if(genStrength != 0 && instance_exists(ObjCharacter)){
		Human = 0;
		//get worker
		if(Worker == 0){
			for(var i = 0; i < ds_list_size(global.HumanList); i++){
				Human = global.HumanList[| i];
				if(Human.workHut == 0 && Worker == 0){
					Human.workHut = other.id;
					Worker = Human.id;
				}	
			}
		}
		if(!instance_exists(Worker)){
			Worker = 0;
		}
		// generate
		if(instance_exists(Worker) && Worker != 0){
			if(global.genTick && Worker.atWork == 1){//&& global.genTimer >= global.genTime -1){
			
			var list, obj, instcount;
				//gathering
				if(buildingType == Building.gatheringhut){
				
					obj = ObjBerryBush;
					instcount = 0;
					with(obj){
						if(collision_circle(x,y,other.Radius,other.id,0,0)){
							instcount++;
						}
					}
					if(ObjKindomManager.Food < ObjKindomManager.maxResources){
						ObjKindomManager.Food +=  max(1,floor(instcount * genStrength));
					}
	
				}
				//chopping
				if(buildingType == Building.choppinghut){
				
					obj = ObjTrees;
					instcount = 0;
					with(obj){
						if(collision_circle(x,y,other.Radius,other.id,0,0)){
							instcount++;
						}
					}
					if(ObjKindomManager.Lumber < ObjKindomManager.maxResources){
						ObjKindomManager.Lumber += max(1,floor(instcount * genStrength));
					}
				}
				//picking
				if(buildingType == Building.pickinghut){
				
					obj = ObjRocks;
					instcount = 0;
					with(obj){
						if(collision_circle(x,y,other.Radius,other.id,0,0)){
							instcount++;
						}
					}
					if(ObjKindomManager.Stone < ObjKindomManager.maxResources){
						ObjKindomManager.Stone += max(1,floor(instcount * genStrength));
					}
				}
				//studying
				if(buildingType == Building.studyhut){
				
					obj = ObjHut;
					instcount = 0;
					with(obj){
						if(collision_circle(x,y,other.Radius,other.id,0,0)){
							instcount++;
						}
					}
					if(ObjKindomManager.Research < ObjKindomManager.maxResources){
						ObjKindomManager.Research += max(1,floor(instcount * genStrength));
					}
				}
			}
		}
	}
	
}





