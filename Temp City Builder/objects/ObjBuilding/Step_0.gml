/// @description Insert description here
// You can write your code in this editor
event_inherited();

//building
if(Built == 0){
	buildTime = buildTime+1*global.GameSpeed;
	if(buildTime >= timeToBuild){
		Built = 1;
	}
}

if(Built == 1){
	
	//housing
	if(Housing != 0){
		//Housing
		if(Housing > Residents){
			housingTimer = housingTimer+1*global.GameSpeed;
			if(housingTimer >= housingTime){
				Residents++;
				housingTimer = 0;
				var n = 3;
				instance_create_layer(x+irandom_range(-n,n)*global.GameSize,
				y+(8+irandom_range(-n,n))*global.GameSize,"Instances",ObjCharacter);
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
	if(genStrength != 0 && global.genTick){//&& global.genTimer >= global.genTime -1){
		
		//gathering
		if(buildingType == Building.gatheringhut){
			ObjKindomManager.Food += genStrength;
		}
		//chopping
		if(buildingType == Building.choppinghut){
			ObjKindomManager.Lumber += genStrength;
		}
		//picking
		if(buildingType == Building.pickinghut){
			ObjKindomManager.Stone += genStrength;
		}
		//studying
		if(buildingType == Building.studyhut){
			ObjKindomManager.Research += genStrength;
		}
	}
	
	
}





