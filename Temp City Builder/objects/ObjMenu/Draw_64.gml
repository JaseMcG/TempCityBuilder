/// @description Insert description here
// You can write your code in this editor

if(gameStart = false){

	
	//draw game map type
	draw_sprite_ext(Sprite,frameMapCoastal,16*global.GameSize+xBuffer,32*global.GameSize+yBuffer,
					global.GameSize,global.GameSize,0,c_white,1);
				
	draw_sprite_ext(Sprite,frameMapPlains,32*global.GameSize+xBuffer,32*global.GameSize+yBuffer,
					global.GameSize,global.GameSize,0,c_white,1);

	draw_sprite_ext(Sprite,frameMapHills,48*global.GameSize+xBuffer,32*global.GameSize+yBuffer,
					global.GameSize,global.GameSize,0,c_white,1);

	draw_sprite_ext(Sprite,frameMapVaried,64*global.GameSize+xBuffer,32*global.GameSize+yBuffer,
					global.GameSize,global.GameSize,0,c_white,1);

	//draw game map biome
	draw_sprite_ext(Sprite,frameBiomeMeadow,16*global.GameSize+xBuffer,48*global.GameSize+yBuffer,
					global.GameSize,global.GameSize,0,c_white,1);
				
	draw_sprite_ext(Sprite,frameBiomeTundra,32*global.GameSize+xBuffer,48*global.GameSize+yBuffer,
					global.GameSize,global.GameSize,0,c_white,1);

	//draw start button
	draw_sprite_ext(startSprite,frameStartButton,Width - (startXBuffer*global.GameSize),Height - (startYBuffer*global.GameSize),
					global.GameSize,global.GameSize,0,c_white,startAlpha);



	if(ObjGame.debugToggle == 1){

	//draw map type
	draw_set_color(c_white);
	if(mapCoastal){draw_set_color(c_yellow);}
	draw_rectangle(16*global.GameSize+xBuffer,32*global.GameSize+yBuffer,24*global.GameSize+xBuffer,40*global.GameSize+yBuffer,1);

	draw_set_color(c_white);
	if(mapPlains){draw_set_color(c_yellow);}
	draw_rectangle(32*global.GameSize+xBuffer,32*global.GameSize+yBuffer,40*global.GameSize+xBuffer,40*global.GameSize+yBuffer,1);

	draw_set_color(c_white);
	if(mapHills){draw_set_color(c_yellow);}
	draw_rectangle(48*global.GameSize+xBuffer,32*global.GameSize+yBuffer,56*global.GameSize+xBuffer,40*global.GameSize+yBuffer,1);

	draw_set_color(c_white);
	if(mapVaried){draw_set_color(c_yellow);}
	draw_rectangle(64*global.GameSize+xBuffer,32*global.GameSize+yBuffer,72*global.GameSize+xBuffer,40*global.GameSize+yBuffer,1);


	//draw biome type
	draw_set_color(c_white);
	if(biomeMeadow){draw_set_color(c_yellow);}
	draw_rectangle(16*global.GameSize+xBuffer,48*global.GameSize+yBuffer,24*global.GameSize+xBuffer,56*global.GameSize+yBuffer,1);

	draw_set_color(c_white);
	if(biomeTundra){draw_set_color(c_yellow);}
	draw_rectangle(32*global.GameSize+xBuffer,48*global.GameSize+yBuffer,40*global.GameSize+xBuffer,56*global.GameSize+yBuffer,1);

	//draw start button
	draw_set_color(c_white);
	if(startButton){draw_set_color(c_yellow);}
	draw_rectangle(Width - (startXBuffer*global.GameSize), Height - (startYBuffer*global.GameSize),
							Width - ((startXBuffer-32)*global.GameSize), Height - ((startYBuffer-16)*global.GameSize),1);
	
	//Paused debug
	if(gamePause == 1){
		
		//draw game size
		draw_set_color(c_white);
		if(sizeTiny){draw_set_color(c_yellow);}
		draw_rectangle(16*global.GameSize+xBuffer,16*global.GameSize+yBuffer,24*global.GameSize+xBuffer,24*global.GameSize+yBuffer,1);

		draw_set_color(c_white);
		if(sizeSmall){draw_set_color(c_yellow);}
		draw_rectangle(32*global.GameSize+xBuffer,16*global.GameSize+yBuffer,40*global.GameSize+xBuffer,24*global.GameSize+yBuffer,1);

		draw_set_color(c_white);
		if(sizeMedium){draw_set_color(c_yellow);}
		draw_rectangle(48*global.GameSize+xBuffer,16*global.GameSize+yBuffer,56*global.GameSize+xBuffer,24*global.GameSize+yBuffer,1);

		draw_set_color(c_white);
		if(sizeBig){draw_set_color(c_yellow);}
		draw_rectangle(64*global.GameSize+xBuffer,16*global.GameSize+yBuffer,72*global.GameSize+xBuffer,24*global.GameSize+yBuffer,1);

		draw_set_color(c_white);
		if(sizeLarge){draw_set_color(c_yellow);}
		draw_rectangle(80*global.GameSize+xBuffer,16*global.GameSize+yBuffer,88*global.GameSize+xBuffer,24*global.GameSize+yBuffer,1);
		
		//draw X Button
		draw_set_color(c_white);
		if(xButton){draw_set_color(c_yellow);}
		draw_rectangle(Width-(28*global.GameSize),16*global.GameSize,Width-(16*global.GameSize),28*global.GameSize,1);
	}
	}

}

if(gamePause == true){
	draw_set_alpha(.5);
	draw_set_color(c_white);
	draw_rectangle(0,0,Width,Height,0);
	draw_set_alpha(1);
	draw_sprite_ext(pauseSprite,0,Width/2,Height/2,global.GameSize, global.GameSize,0,c_white,1);
	
	//draw X button
	draw_sprite_ext(xButtonSprite,frameXButton,Width-(28*global.GameSize),16*global.GameSize,
													global.GameSize,global.GameSize,0,c_white,1);

	//draw game size checks
	draw_sprite_ext(Sprite,frameSizeTiny,16*global.GameSize+xBuffer,16*global.GameSize+yBuffer,
					global.GameSize,global.GameSize,0,c_white,1);
				
	draw_sprite_ext(Sprite,frameSizeSmall,32*global.GameSize+xBuffer,16*global.GameSize+yBuffer,
					global.GameSize,global.GameSize,0,c_white,1);

	draw_sprite_ext(Sprite,frameSizeMedium,48*global.GameSize+xBuffer,16*global.GameSize+yBuffer,
					global.GameSize,global.GameSize,0,c_white,1);

	draw_sprite_ext(Sprite,frameSizeBig,64*global.GameSize+xBuffer,16*global.GameSize+yBuffer,
					global.GameSize,global.GameSize,0,c_white,1);

	draw_sprite_ext(Sprite,frameSizeLarge,80*global.GameSize+xBuffer,16*global.GameSize+yBuffer,
					global.GameSize,global.GameSize,0,c_white,1);

}
