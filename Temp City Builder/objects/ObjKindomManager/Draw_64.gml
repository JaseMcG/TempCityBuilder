/// @description Insert description here
// You can write your code in this editor
var offsetadgjustx = -global.startingOffset;
var offsetadgjusty = -global.startingOffset;
draw_set_font(FonPixelUI);
draw_set_halign(fa_center);
var inc1 = .5;
var inc2 = 1;
var inc3 = 1.5;
var inc4 = 2;



//_xoffset = (floor((XOffset*offsetadgjustx)/global.GameSize) * global.GameSize);
offsetadgjusty += 1;

//draw food
if(Food){
	var offinc = 0;
	if(Food >= 10){offinc = inc1;}
	if(Food >= 100){offinc = inc2;}
	if(Food >= 1000){offinc = inc3;}
	if(Food >= 10000){offinc = inc4;}
	offsetadgjustx += 1;
	draw_sprite_ext(SprIconFood,0,XOffset*offsetadgjustx,YOffset*offsetadgjusty,global.GameSize,global.GameSize,0,c_white,1);
	offsetadgjustx += 2 + offinc;
	draw_text_transformed(XOffset*offsetadgjustx,YOffset*offsetadgjusty ,string(Food),1,1,0);
	offsetadgjustx += offinc;
}
//draw food
if(Housing){
	var offinc = 0;
	if(Housing >= 10){offinc = inc1;}
	if(Housing >= 100){offinc = inc2;}
	if(Housing >= 1000){offinc = inc3;}
	if(Housing >= 10000){offinc = inc4;}
	offsetadgjustx += 1;
	draw_sprite_ext(SprIconHousing,0,XOffset*offsetadgjustx,YOffset*offsetadgjusty,global.GameSize,global.GameSize,0,c_white,1);
	offsetadgjustx += 2 + offinc;
	draw_text_transformed(XOffset*offsetadgjustx,YOffset*offsetadgjusty ,string(Housing),1,1,0);
	offsetadgjustx += offinc;
}
//draw gold
if(Wealth){
	var offinc = 0;
	if(Wealth >= 10){offinc = inc1;}
	if(Wealth >= 100){offinc = inc2;}
	if(Wealth >= 1000){offinc = inc3;}
	if(Wealth >= 10000){offinc = inc4;}
	offsetadgjustx += 1;
	draw_sprite_ext(SprIconGold,0,XOffset*offsetadgjustx,YOffset*offsetadgjusty,global.GameSize,global.GameSize,0,c_white,1);
	offsetadgjustx += 2 + offinc;
	draw_text_transformed(XOffset*offsetadgjustx,YOffset*offsetadgjusty ,string(Wealth),1,1,0);
	offsetadgjustx += offinc;
}
//draw happy
if(Happy){
	
	var offinc = 0;
	if(Happy >= 10){offinc = inc1;}
	offsetadgjustx += 1;
	var happyframe = 1;
	if(Happy >= 7){happyframe = 0;}
	if(Happy <= 3){happyframe = 2;}
	draw_sprite_ext(SprIconHappy,happyframe,XOffset*offsetadgjustx,YOffset*offsetadgjusty,global.GameSize,global.GameSize,0,c_white,1);
	offsetadgjustx += 2 + offinc;
	draw_text_transformed(XOffset*offsetadgjustx,YOffset*offsetadgjusty ,string(Happy),1,1,0);
	offsetadgjustx += offinc;
}
//draw research
if(Research){
	var offinc = 0;
	if(Research >= 10){offinc = inc1;}
	if(Research >= 100){offinc = inc2;}
	if(Research >= 1000){offinc = inc3;}
	if(Research >= 10000){offinc = inc4;}
	offsetadgjustx += 1;
	draw_sprite_ext(SprIconResearch,0,XOffset*offsetadgjustx,YOffset*offsetadgjusty,global.GameSize,global.GameSize,0,c_white,1);
	offsetadgjustx += 2 + offinc;;
	draw_text_transformed(XOffset*offsetadgjustx,YOffset*offsetadgjusty ,string(Research),1,1,0);
	offsetadgjustx += offinc;
}
//draw lumber
if(Lumber){
	var offinc = 0;
	if(Lumber >= 10){offinc = inc1;}
	if(Lumber >= 100){offinc = inc2;}
	if(Lumber >= 1000){offinc = inc3;}
	if(Lumber >= 10000){offinc = inc4;}
	offsetadgjustx += 1;
	draw_sprite_ext(SprIconWood,0,XOffset*offsetadgjustx,YOffset*offsetadgjusty,global.GameSize,global.GameSize,0,c_white,1);
	offsetadgjustx += 2 + offinc;
	draw_text_transformed(XOffset*offsetadgjustx,YOffset*offsetadgjusty ,string(Lumber),1,1,0);
	offsetadgjustx += offinc;
}
//draw stone
if(Stone){
	var offinc = 0;
	if(Stone >= 10){offinc = inc1;}
	if(Stone >= 100){offinc = inc2;}
	if(Stone >= 1000){offinc = inc3;}
	if(Stone >= 10000){offinc = inc4;}
	offsetadgjustx += 1;
	draw_sprite_ext(SprIconStone,0,XOffset*offsetadgjustx,YOffset*offsetadgjusty,global.GameSize,global.GameSize,0,c_white,1);
	offsetadgjustx += 2 + offinc;
	draw_text_transformed(XOffset*offsetadgjustx,YOffset*offsetadgjusty ,string(Stone),1,1,0);
	offsetadgjustx += offinc;
}


draw_set_font(FonPixel);
draw_set_halign(fa_left);



