/// @description Insert description here
// You can write your code in this editor

Width		= 8 * ObjGame.screenSizeX;
Height		= 8 * ObjGame.screenSizeY;
buttonSize	= 16 * global.GameSize;
XOffset		= 16 * global.GameSize;
YOffset		= Height - (16 * global.GameSize) * global.startingOffset - buttonSize;


Button = 0;
buttonMax = 6;
buttonAmount = 0;

//checks to unlock buttons
characterCheck = 0;

spawnX = 16 * global.GameSize;//(Width / 2)-(20*ObjGame.globalGameSize*(Button/2));

buttonSelected	= Building.none;
buttonType		= Building.none;

//for(var i = 0; i < Button; i += 1){
//	instance_create_layer(spawnX,16*ObjGame.globalGameSize,"instances",ObjButton);
//	spawnX = spawnX + (20*ObjGame.globalGameSize);
//}

//button vars for each building/placable
startButton			= 0;
startSprite			= SprButtonStartingTent;
startFrame			= 0;

hutButton			= 0;
hutSprite			= SprButtonHut;
hutFrame			= 0;

gatheringButton		= 0;
gatheringSprite		= SprButtonGathering;
gatheringFrame		= 0;

choppingButton		= 0;
choppingSprite		= SprButtonChopping
choppingFrame		= 0;

pickingButton		= 0;
pickingSprite		= SprButtonPicking;
pickingFrame		= 0;

studyButton			= 0;
studySprite			= SprButtonStudy;
studyFrame			= 0;

upgradeButton		= 0;
upgradeSprite		= SprButtonUpgrade;
upgradeFrame		= 0;

destroyButton		= 0;
destroySprite		= SprButtonDestroy;
destroyFrame		= 0;