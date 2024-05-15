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
	}
	
}





