/// @description Insert description here
// You can write your code in this editor
	
	var offsetadgjustx = startingOffsetX;
	var offsetadgjusty = startingOffsetY; 
	offsetadgjustx += 1;
	offsetadgjusty += 1;
	
if(gameStart == false && global.GamePaused == -1){
	
	//Map Type
	#region Map Type
	/*
	mapCoastal	= point_in_rectangle(mouse_x,mouse_y,XOffset*offsetadgjustx,YOffset*offsetadgjusty,
													XOffset*offsetadgjustx + buttonSize,YOffset*offsetadgjusty + buttonSize);
	if(mapCoastal == true){
		frameMapCoastal = 1
		if(global.m1){
			frameMapCoastal = 2;
		}
		if(global.m1Release){
			gameMapType = 1;
			global.mapType = Biome.coastal;
		}
	}else frameMapCoastal = 0;
	if(gameMapType = 1){frameMapCoastal = 3};
	offsetadgjustx += 1;
	mapPlains	= point_in_rectangle(mouse_x,mouse_y,XOffset*offsetadgjustx,YOffset*offsetadgjusty,
													XOffset*offsetadgjustx + buttonSize,YOffset*offsetadgjusty + buttonSize);
	if(mapPlains == true){
		frameMapPlains = 1
		if(global.m1){
			frameMapPlains = 2;
		}
		if(global.m1Release){
			gameMapType = 2;
			global.mapType = Biome.plains;
		}
	}else frameMapPlains = 0;
	if(gameMapType = 2){frameMapPlains = 3};
	offsetadgjustx += 1;
	mapHills	= point_in_rectangle(mouse_x,mouse_y,XOffset*offsetadgjustx,YOffset*offsetadgjusty,
													XOffset*offsetadgjustx + buttonSize,YOffset*offsetadgjusty + buttonSize);
	if(mapHills == true){
		frameMapHills = 1
		if(global.m1){
			frameMapHills = 2;
		}
		if(global.m1Release){
			gameMapType = 3;
			global.mapType = Biome.hills;
		}
	}else frameMapHills = 0;
	if(gameMapType = 3){frameMapHills = 3};
	offsetadgjustx += 1;
	mapVaried	= point_in_rectangle(mouse_x,mouse_y,XOffset*offsetadgjustx,YOffset*offsetadgjusty,
													XOffset*offsetadgjustx + buttonSize,YOffset*offsetadgjusty + buttonSize);		
	if(mapVaried == true){
		frameMapVaried = 1
		if(global.m1){
			frameMapVaried = 2;
		}
		if(global.m1Release){
			gameMapType = 4;
			global.mapType = Biome.varied;
		}
	}else frameMapVaried = 0;
	if(gameMapType = 4){frameMapVaried = 3};
	*/
	#endregion
	

	offsetadgjustx = startingOffsetX;
	
	
	//Map Biome
	#region Map Biome
	offsetadgjustx += 1;
	offsetadgjusty += 1;
	biomeMeadow	= point_in_rectangle(mouse_x,mouse_y,XOffset*offsetadgjustx,YOffset*offsetadgjusty,
													XOffset*offsetadgjustx + buttonSize,YOffset*offsetadgjusty + buttonSize);
	if(biomeMeadow == true){
		frameBiomeMeadow = 1
		if(global.m1){
			frameBiomeMeadow = 2;
		}
		if(global.m1Release){
			gameMapBiome = Biome.meadow;
			
		}
	}else frameBiomeMeadow = 0;
	if(gameMapBiome = 1){frameBiomeMeadow = 3};
	offsetadgjustx += 1;						
	biomeTundra	= point_in_rectangle(mouse_x,mouse_y,XOffset*offsetadgjustx,YOffset*offsetadgjusty,
													XOffset*offsetadgjustx + buttonSize,YOffset*offsetadgjusty + buttonSize);
	if(biomeTundra == true){
		frameBiomeTundra = 1
		if(global.m1){
			frameBiomeTundra = 2;
		}
		if(global.m1Release){
			gameMapBiome = Biome.tundra;
		}
	}else frameBiomeTundra = 0;
	if(gameMapBiome = 2){frameBiomeTundra = 3};
	
	//set properties
	if(gameMapBiome == Biome.meadow){
		global.biomeSprite = SprMeadowTiles;
		global.waterSprite = SprMeadowWaterTiles;
		bgSprite		= SprBGMeadow;
		bgStuffSprite	= SprBGMeadowStuff;
	}	
	if(gameMapBiome == Biome.tundra){
		global.biomeSprite = SprTundraTiles;
		global.waterSprite = SprTundraWaterTiles;
		bgSprite		= SprBGTundra
		bgStuffSprite	= SprBGMeadowStuff;
	}
	
	#endregion
	
	//Start Button
	#region Start Button
	offsetadgjustx += 1;
	offsetadgjusty += 1;
	startButton = point_in_rectangle(mouse_x,mouse_y,Width - (startXBuffer*global.GameSize), Height - (startYBuffer*global.GameSize),
													 Width - ((startXBuffer-32)*global.GameSize), Height - ((startYBuffer-16)*global.GameSize));
	if(startButton == true){
		frameStartButton = 1
		if(global.m1){
			frameStartButton = 2;
		}
		if(global.m1Release){
			if(gameScreenSize != 0 && gameMapBiome != 0 ){ //&& gameMapType != 0
				gameStart = true;
			}
		}
	}else frameStartButton = 0;
	
	if((gameScreenSize != 0 && gameMapBiome != 0 )){ //&& gameMapType != 0
		startAlpha = 1;
	}else startAlpha = .5;
	
	#endregion
	
}


//if(gameStart == true){
	if(keyboard_check_pressed(vk_escape)){

		global.GamePaused = global.GamePaused * -1;
		if(global.GamePaused == 1){
			prevGameSpeed = global.GameSpeed;
		}
		if(global.GamePaused == -1){
			global.GameSpeed = prevGameSpeed;
		}
	}

//}

if(global.GamePaused == 1){
	
	offsetadgjustx = startingOffsetX;
	offsetadgjusty = startingOffsetY; 
	offsetadgjustx += 1;
	offsetadgjusty += 1;
	
	global.GameSpeed = 0;
	
	// X button
	xButton	 = point_in_rectangle(mouse_x,mouse_y,Width-(8*global.GameSize)-(buttonSize*2),8*global.GameSize,
												Width-(8*global.GameSize),(8*global.GameSize)+(buttonSize*2));
	if(xButton == true){
		frameXButton = 1
		if(global.m1){
			frameXButton = 2;
		}
		if(global.m1Release){
			game_end();
		}
	}else frameXButton = 0;
	
		//Game Size
	#region Game Size
	sizeTiny	 = point_in_rectangle(mouse_x,mouse_y,XOffset*offsetadgjustx,YOffset*offsetadgjusty,
													XOffset*offsetadgjustx + buttonSize,YOffset*offsetadgjusty + buttonSize);
	if(sizeTiny == true){
		frameSizeTiny = 1
		if(global.m1){
			frameSizeTiny = 2;
		}
		if(global.m1Release){
			gameScreenSize = 1;
			//global.GameSize = 1;
			window_set_size(240,135)
		}
	}else frameSizeTiny = 0;
	if(gameScreenSize = 1){frameSizeTiny = 3};
	offsetadgjustx += 1;
	sizeSmall	 = point_in_rectangle(mouse_x,mouse_y,XOffset*offsetadgjustx,YOffset*offsetadgjusty,
													XOffset*offsetadgjustx + buttonSize,YOffset*offsetadgjusty + buttonSize);
	if(sizeSmall == true){
		frameSizeSmall = 1
		if(global.m1){
			frameSizeSmall = 2;
		}
		if(global.m1Release){
			gameScreenSize = 2;
			//global.GameSize = 2;
			window_set_size(240*2,135*2)
		}
	}else frameSizeSmall = 0;
	if(gameScreenSize = 2){frameSizeSmall = 3};
	offsetadgjustx += 1;
	sizeMedium	 = point_in_rectangle(mouse_x,mouse_y,XOffset*offsetadgjustx,YOffset*offsetadgjusty,
													XOffset*offsetadgjustx + buttonSize,YOffset*offsetadgjusty + buttonSize);
	if(sizeMedium == true){
		frameSizeMedium = 1
		if(global.m1){
			frameSizeMedium = 2;
		}
		if(global.m1Release){
			gameScreenSize = 3;
			//global.GameSize = 3;
			window_set_size(240*3,135*3)
		}
	}else frameSizeMedium = 0;
	if(gameScreenSize = 3){frameSizeMedium = 3};
	offsetadgjustx += 1;
	sizeBig		 = point_in_rectangle(mouse_x,mouse_y,XOffset*offsetadgjustx,YOffset*offsetadgjusty,
													XOffset*offsetadgjustx + buttonSize,YOffset*offsetadgjusty + buttonSize);
	if(sizeBig == true){
		frameSizeBig = 1
		if(global.m1){
			frameSizeBig = 2;
		}
		if(global.m1Release){
			gameScreenSize = 4;
			//global.GameSize = 4;
			window_set_size(240*4,135*4)
		}
	}else frameSizeBig = 0;
	if(gameScreenSize = 4){frameSizeBig = 3};
	offsetadgjustx += 1;
	sizeLarge	 = point_in_rectangle(mouse_x,mouse_y,XOffset*offsetadgjustx,YOffset*offsetadgjusty,
													XOffset*offsetadgjustx + buttonSize,YOffset*offsetadgjusty + buttonSize);
	if(sizeLarge == true){
		frameSizeLarge = 1
		if(global.m1){
			frameSizeLarge = 2;
		}
		if(global.m1Release){
			gameScreenSize = 5;
			//global.GameSize = 5;
			window_set_size(240*5,135*5)
		}
	}else frameSizeLarge = 0;
	if(gameScreenSize = 5){frameSizeLarge = 3};
	
	#endregion
	
	
}







