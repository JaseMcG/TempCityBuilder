/// @description Insert description here
// You can write your code in this editor
var offsetadgjust = 0;
draw_set_font(FonPixelUI);
draw_set_halign(fa_center);

//_xoffset = (floor((XOffset*offsetadgjust)/global.GameSize) * global.GameSize);


//draw food
if(Food){
	var offinc = 0;
	if(Food >= 10){offinc = .2;}
	if(Food >= 100){offinc = .4;}
	if(Food >= 1000){offinc = .6;}
	if(Food >= 10000){offinc = .8;}
	offsetadgjust += global.startingOffset;
	draw_sprite_ext(SprIconFood,0,XOffset*offsetadgjust,YOffset,global.GameSize,global.GameSize,0,c_white,1);
	offsetadgjust += 1 + offinc;
	draw_text_transformed(XOffset*offsetadgjust,YOffset-8,string(Food),1,1,0);
	offsetadgjust += offinc;
}
//draw gold
if(Wealth){
	var offinc = 0;
	if(Wealth >= 10){offinc = .2;}
	if(Wealth >= 100){offinc = .4;}
	if(Wealth >= 1000){offinc = .6;}
	if(Wealth >= 10000){offinc = .8;}
	offsetadgjust += .5;
	draw_sprite_ext(SprIconGold,0,XOffset*offsetadgjust,YOffset,global.GameSize,global.GameSize,0,c_white,1);
	offsetadgjust += 1 + offinc;
	draw_text_transformed(XOffset*offsetadgjust,YOffset-8,string(Wealth),1,1,0);
	offsetadgjust += offinc;
}
//draw happy
if(Happy){
	
	var offinc = 0;
	if(Happy >= 10){offinc = .2;}
	offsetadgjust += .5;
	var happyframe = 1;
	if(Happy >= 7){happyframe = 0;}
	if(Happy <= 3){happyframe = 2;}
	draw_sprite_ext(SprIconHappy,happyframe,XOffset*offsetadgjust,YOffset,global.GameSize,global.GameSize,0,c_white,1);
	offsetadgjust += 1 + offinc;
	draw_text_transformed(XOffset*offsetadgjust,YOffset-8,string(Happy),1,1,0);
	offsetadgjust += offinc;
}
//draw research
if(Research){
	var offinc = 0;
	if(Research >= 10){offinc = .2;}
	if(Research >= 100){offinc = .4;}
	if(Research >= 1000){offinc = .6;}
	if(Research >= 10000){offinc = .8;}
	offsetadgjust += .5;
	draw_sprite_ext(SprIconResearch,0,XOffset*offsetadgjust,YOffset,global.GameSize,global.GameSize,0,c_white,1);
	offsetadgjust += 1 + offinc;;
	draw_text_transformed(XOffset*offsetadgjust,YOffset-8,string(Research),1,1,0);
	offsetadgjust += offinc;
}
//draw lumber
if(Lumber){
	var offinc = 0;
	if(Lumber >= 10){offinc = .2;}
	if(Lumber >= 100){offinc = .4;}
	if(Lumber >= 1000){offinc = .6;}
	if(Lumber >= 10000){offinc = .8;}
	offsetadgjust += .5;
	draw_sprite_ext(SprIconWood,0,XOffset*offsetadgjust,YOffset,global.GameSize,global.GameSize,0,c_white,1);
	offsetadgjust += 1 + offinc;
	draw_text_transformed(XOffset*offsetadgjust,YOffset-8,string(Lumber),1,1,0);
	offsetadgjust += offinc;
}
//draw stone
if(Stone){
	var offinc = 0;
	if(Stone >= 10){offinc = .2;}
	if(Stone >= 100){offinc = .4;}
	if(Stone >= 1000){offinc = .6;}
	if(Stone >= 10000){offinc = .8;}
	offsetadgjust += .5;
	draw_sprite_ext(SprIconStone,0,XOffset*offsetadgjust,YOffset,global.GameSize,global.GameSize,0,c_white,1);
	offsetadgjust += 1 + offinc;
	draw_text_transformed(XOffset*offsetadgjust,YOffset-8,string(Stone),1,1,0);
	offsetadgjust += offinc;
}


draw_set_font(FonPixel);
draw_set_halign(fa_left);



