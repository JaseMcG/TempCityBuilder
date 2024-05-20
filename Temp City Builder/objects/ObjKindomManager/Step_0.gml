/// @description Insert description here
// You can write your code in this editor

//generate buttons
if(allButtons == 0){
	if(!instance_exists(ObjTownStart)){
		//instance_create_layer(floor(Width/2),floor(Height/2),"Instances",ObjTownStart);
		ObjButtonManager.startButton		= 1;
		ObjButtonManager.destroyButton		= 1;
	}
	if(instance_exists(ObjTownStart)){
		if(ObjTownStart.Built == 1){
		
			ObjButtonManager.choppingButton	= 1;
			ObjButtonManager.pickingButton	= 1;
			ObjButtonManager.gatheringButton	= 1;
		}
	}
	if(instance_exists(ObjGatheringHut) && instance_exists(ObjChoppingHut) && instance_exists(ObjPickingHut)){
		if(ObjGatheringHut.Built == 1 && ObjChoppingHut.Built == 1 && ObjPickingHut.Built == 1){
			ObjButtonManager.hutButton		= 1;
		}
	}
	if(instance_exists(ObjHut)){
		if(ObjHut.Built == 1){
			ObjButtonManager.studyButton	= 1;
		}
	}
	if(instance_exists(ObjStudy)){
		if(ObjStudy.Built == 1){
			ObjButtonManager.upgradeButton	= 1;
			//allButtons						= 1;
		}
	}
}

if(keyboard_check_pressed(vk_add) && ObjGame.debugToggle == 1){
	Food += 50;
}

//clamp resources

Food			= clamp(Food,0,maxResources);
Wealth			= clamp(Wealth,0,maxResources);
Happy			= clamp(Happy,0,10);
Research		= clamp(Research,0,maxResources);

Lumber			= clamp(Lumber,0,maxResources);
Stone			= clamp(Stone,0,maxResources);
Copper			= clamp(Copper,0,maxResources);
Tin				= clamp(Copper,0,maxResources);
Bronze			= clamp(Copper,0,maxResources);
Iron			= clamp(Copper,0,maxResources);


