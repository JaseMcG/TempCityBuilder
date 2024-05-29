/// @description Insert description here
// You can write your code in this editor
	
	var offsetadgjustx = startingOffsetX;
	var offsetadgjusty = startingOffsetY; 
	offsetadgjustx += 1;
	offsetadgjusty += 1;
if(gameStart = false){
	
	//draw main menu bg
	draw_sprite_ext(bgSprite,0,1,1,global.GameSize,global.GameSize,0,c_white,1);
	//draw stuff on bg
	draw_sprite_ext(bgStuffSprite,0,1,1,global.GameSize,global.GameSize,0,c_white,1);
	
	#region Map Type
	/*
	//draw game map type
	draw_sprite_ext(Sprite,frameMapCoastal,XOffset*offsetadgjustx,YOffset*offsetadgjusty,
					global.GameSize,global.GameSize,0,c_white,1);
				
	offsetadgjustx += 1;
	draw_sprite_ext(Sprite,frameMapPlains,XOffset*offsetadgjustx,YOffset*offsetadgjusty,
					global.GameSize,global.GameSize,0,c_white,1);
					
	offsetadgjustx += 1; 
	draw_sprite_ext(Sprite,frameMapHills,XOffset*offsetadgjustx,YOffset*offsetadgjusty,
					global.GameSize,global.GameSize,0,c_white,1);

	offsetadgjustx += 1;
	draw_sprite_ext(Sprite,frameMapVaried,XOffset*offsetadgjustx,YOffset*offsetadgjusty,
					global.GameSize,global.GameSize,0,c_white,1);

	//debug
	if(ObjGame.debugToggle == 1){
	
		offsetadgjustx = startingOffsetX;
		offsetadgjusty = startingOffsetY; 
		offsetadgjustx += 1;
		offsetadgjusty += 1;
		
		draw_set_color(c_white);
		if(mapCoastal){draw_set_color(c_yellow);}
		draw_rectangle(XOffset*offsetadgjustx,YOffset*offsetadgjusty,
						XOffset*offsetadgjustx + buttonSize,YOffset*offsetadgjusty + buttonSize,1);

		draw_set_color(c_white);
		if(mapPlains){draw_set_color(c_yellow);}
		offsetadgjustx += 1;
		draw_rectangle(XOffset*offsetadgjustx,YOffset*offsetadgjusty,
						XOffset*offsetadgjustx + buttonSize,YOffset*offsetadgjusty + buttonSize,1);

		draw_set_color(c_white);
		if(mapHills){draw_set_color(c_yellow);}
		offsetadgjustx += 1;
		draw_rectangle(XOffset*offsetadgjustx,YOffset*offsetadgjusty,
						XOffset*offsetadgjustx + buttonSize,YOffset*offsetadgjusty + buttonSize,1);

		draw_set_color(c_white);
		if(mapVaried){draw_set_color(c_yellow);}
		offsetadgjustx += 1;
		draw_rectangle(XOffset*offsetadgjustx,YOffset*offsetadgjusty,
						XOffset*offsetadgjustx + buttonSize,YOffset*offsetadgjusty + buttonSize,1);
	}*/
	#endregion


	#region Map Biome
	//draw game map biome
	offsetadgjustx = startingOffsetX;
	offsetadgjustx += 1;
	offsetadgjusty += 1;
	draw_sprite_ext(Sprite,frameBiomeMeadow,XOffset*offsetadgjustx,YOffset*offsetadgjusty,
					global.GameSize,global.GameSize,0,c_white,1);
	offsetadgjustx += 1;
	draw_sprite_ext(Sprite,frameBiomeTundra,XOffset*offsetadgjustx,YOffset*offsetadgjusty,
					global.GameSize,global.GameSize,0,c_white,1);


	//debug
	if(ObjGame.debugToggle == 1){
		offsetadgjustx = startingOffsetX;
		offsetadgjusty = startingOffsetY; 
		offsetadgjustx += 1;
		offsetadgjusty += 2;
		
		//draw biome type
		draw_set_color(c_white);
		if(biomeMeadow){draw_set_color(c_yellow);}
		draw_rectangle(XOffset*offsetadgjustx,YOffset*offsetadgjusty,
						XOffset*offsetadgjustx + buttonSize,YOffset*offsetadgjusty + buttonSize,1);

		draw_set_color(c_white);
		if(biomeTundra){draw_set_color(c_yellow);}
		offsetadgjustx += 1;
		draw_rectangle(XOffset*offsetadgjustx,YOffset*offsetadgjusty,
						XOffset*offsetadgjustx + buttonSize,YOffset*offsetadgjusty + buttonSize,1);


		
	}

	#endregion
		
	//draw start button

	draw_sprite_ext(startSprite,frameStartButton,Width - (startXBuffer*global.GameSize),Height - (startYBuffer*global.GameSize),
					global.GameSize,global.GameSize,0,c_white,startAlpha);
	
	//draw start button debug
	if(ObjGame.debugToggle == 1){
		draw_set_color(c_white);
		if(startButton){draw_set_color(c_yellow);}
		draw_rectangle(Width - (startXBuffer*global.GameSize), Height - (startYBuffer*global.GameSize),
							Width - ((startXBuffer-32)*global.GameSize), Height - ((startYBuffer-16)*global.GameSize),1);
	}

	//Paused debug
	if(global.GamePaused == 1){
	
	
	}
	
}

if(global.GamePaused == true){
	draw_set_alpha(.5);
	draw_set_color(c_white);
	draw_rectangle(0,0,Width,Height,0);
	draw_set_alpha(1);
	draw_sprite_ext(pauseSprite,0,Width/2,Height/2,global.GameSize, global.GameSize,0,c_white,1);
	
	offsetadgjustx = startingOffsetX;
	offsetadgjusty = startingOffsetY; 
	offsetadgjustx += 1;
	offsetadgjusty += 1;
	
	//draw X button
	draw_sprite_ext(xButtonSprite,frameXButton,Width-(8*global.GameSize)-(buttonSize*2),8*global.GameSize,
													global.GameSize,global.GameSize,0,c_white,1);

	//draw game size checks
	draw_sprite_ext(Sprite,frameSizeTiny,XOffset*offsetadgjustx,YOffset*offsetadgjusty,
					global.GameSize,global.GameSize,0,c_white,1);
	
	offsetadgjustx += 1;
	draw_sprite_ext(Sprite,frameSizeSmall,XOffset*offsetadgjustx,YOffset*offsetadgjusty,
					global.GameSize,global.GameSize,0,c_white,1);
	
	offsetadgjustx += 1;
	draw_sprite_ext(Sprite,frameSizeMedium,XOffset*offsetadgjustx,YOffset*offsetadgjusty,
					global.GameSize,global.GameSize,0,c_white,1);
	
	offsetadgjustx += 1;
	draw_sprite_ext(Sprite,frameSizeBig,XOffset*offsetadgjustx,YOffset*offsetadgjusty,
					global.GameSize,global.GameSize,0,c_white,1);
	
	offsetadgjustx += 1;
	draw_sprite_ext(Sprite,frameSizeLarge,XOffset*offsetadgjustx,YOffset*offsetadgjusty,
					global.GameSize,global.GameSize,0,c_white,1);


	//debug
	if(ObjGame.debugToggle == 1){
		
		offsetadgjustx = startingOffsetX;
		offsetadgjusty = startingOffsetY; 
		offsetadgjustx += 1;
		offsetadgjusty += 1;
	
		//draw game size
		draw_set_color(c_white);
		if(sizeTiny){draw_set_color(c_yellow);}
		draw_rectangle(XOffset*offsetadgjustx,YOffset*offsetadgjusty,
						XOffset*offsetadgjustx + buttonSize,YOffset*offsetadgjusty + buttonSize,1);

		draw_set_color(c_white);
		if(sizeSmall){draw_set_color(c_yellow);}
		offsetadgjustx += 1;
		draw_rectangle(XOffset*offsetadgjustx,YOffset*offsetadgjusty,
						XOffset*offsetadgjustx + buttonSize,YOffset*offsetadgjusty + buttonSize,1);

		draw_set_color(c_white);
		if(sizeMedium){draw_set_color(c_yellow);}
		offsetadgjustx += 1;
		draw_rectangle(XOffset*offsetadgjustx,YOffset*offsetadgjusty,
						XOffset*offsetadgjustx + buttonSize,YOffset*offsetadgjusty + buttonSize,1);

		draw_set_color(c_white);
		if(sizeBig){draw_set_color(c_yellow);}
		offsetadgjustx += 1;
		draw_rectangle(XOffset*offsetadgjustx,YOffset*offsetadgjusty,
						XOffset*offsetadgjustx + buttonSize,YOffset*offsetadgjusty + buttonSize,1);

		draw_set_color(c_white);
		if(sizeLarge){draw_set_color(c_yellow);}
		offsetadgjustx += 1;
		draw_rectangle(XOffset*offsetadgjustx,YOffset*offsetadgjusty,
						XOffset*offsetadgjustx + buttonSize,YOffset*offsetadgjusty + buttonSize,1);
		
		//draw X Button
		draw_set_color(c_white);
		if(xButton){draw_set_color(c_yellow);}
		draw_rectangle(Width-(8*global.GameSize)-(buttonSize*2),8*global.GameSize,
						Width-(8*global.GameSize),(8*global.GameSize)+(buttonSize*2),1);
	}

}
