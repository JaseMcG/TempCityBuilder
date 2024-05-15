/// @description Insert description here
// You can write your code in this editor
var offsetadgjust = 0;

//draw food
offsetadgjust += 1;
draw_sprite_ext(SprIconFood,0,XOffset*offsetadgjust,YOffset,global.GameSize,global.GameSize,0,c_white,1);
offsetadgjust += 1;
draw_text_transformed(XOffset*offsetadgjust,YOffset-8,string(Food),global.GameSize,global.GameSize,0);
offsetadgjust += 1;

//draw research
offsetadgjust += 1;
draw_sprite_ext(SprIconResearch,0,XOffset*offsetadgjust,YOffset,global.GameSize,global.GameSize,0,c_white,1);
offsetadgjust += 1;
draw_text_transformed(XOffset*offsetadgjust,YOffset-8,string(Research),global.GameSize,global.GameSize,0);
offsetadgjust += 1;





