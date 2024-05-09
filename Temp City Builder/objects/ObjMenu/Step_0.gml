/// @description Insert description here
// You can write your code in this editor

if(gameStart == false && gamePause == -1){
	
	xBuffer			= 8 * global.GameSize;
	yBuffer			= 8 * global.GameSize;
	Width	= 2 * global.GameSize * ObjGame.screenSizeX;
	Height	= 2 * global.GameSize * ObjGame.screenSizeY;
	/*
	
	240,135
	
	*/
	

	//Map Type
	#region Map Type
	mapCoastal	= point_in_rectangle(mouse_x,mouse_y,16*global.GameSize+xBuffer,32*global.GameSize+yBuffer,
													24*global.GameSize+xBuffer,40*global.GameSize+yBuffer);
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
	
	mapPlains	= point_in_rectangle(mouse_x,mouse_y,32*global.GameSize+xBuffer,32*global.GameSize+yBuffer,
													40*global.GameSize+xBuffer,40*global.GameSize+yBuffer);
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
	
	mapHills	= point_in_rectangle(mouse_x,mouse_y,48*global.GameSize+xBuffer,32*global.GameSize+yBuffer,
													56*global.GameSize+xBuffer,40*global.GameSize+yBuffer);
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
	
	mapVaried	= point_in_rectangle(mouse_x,mouse_y,64*global.GameSize+xBuffer,32*global.GameSize+yBuffer,
													72*global.GameSize+xBuffer,40*global.GameSize+yBuffer);		
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
	
	#endregion
	
	//Map Biome
	#region Map Biome
	biomeMeadow	= point_in_rectangle(mouse_x,mouse_y,16*global.GameSize+xBuffer,48*global.GameSize+yBuffer,
													24*global.GameSize+xBuffer,56*global.GameSize+yBuffer);
	if(biomeMeadow == true){
		frameBiomeMeadow = 1
		if(global.m1){
			frameBiomeMeadow = 2;
		}
		if(global.m1Release){
			gameMapBiome = 1;
			global.biomeSprite = SprMeadowTiles;
		}
	}else frameBiomeMeadow = 0;
	if(gameMapBiome = 1){frameBiomeMeadow = 3};
													
	biomeTundra	= point_in_rectangle(mouse_x,mouse_y,32*global.GameSize+xBuffer,48*global.GameSize+yBuffer,
													40*global.GameSize+xBuffer,56*global.GameSize+yBuffer);
	if(biomeTundra == true){
		frameBiomeTundra = 1
		if(global.m1){
			frameBiomeTundra = 2;
		}
		if(global.m1Release){
			gameMapBiome = 2;
			global.biomeSprite = SprTundraTiles;
		}
	}else frameBiomeTundra = 0;
	if(gameMapBiome = 2){frameBiomeTundra = 3};
	
	#endregion
	
	//Start Button
	#region Start Button
	
	startButton = point_in_rectangle(mouse_x,mouse_y,64*global.GameSize+xBuffer,64*global.GameSize+yBuffer,
													 96*global.GameSize+xBuffer,80*global.GameSize+yBuffer);
	if(startButton == true){
		frameStartButton = 1
		if(global.m1){
			frameStartButton = 2;
		}
		if(global.m1Release){
			if(gameScreenSize != 0 && gameMapBiome != 0 && gameMapType != 0){
				gameStart = true;
			}
		}
	}else frameStartButton = 0;
	
	if((gameScreenSize != 0 && gameMapBiome != 0 && gameMapType != 0)){
		startAlpha = 1;
	}else startAlpha = .5;
	
	#endregion
	
}


//if(gameStart == true){
	if(keyboard_check_pressed(vk_escape)){

		gamePause = gamePause * -1;
		if(gamePause == 1){
			prevGameSpeed = global.GameSpeed;
		}
		if(gamePause == -1){
			global.GameSpeed = prevGameSpeed;
		}
	}

//}

if(gamePause == 1){
	
	
	global.GameSpeed = 0;
	
	xButton	 = point_in_rectangle(mouse_x,mouse_y,Width-(28*global.GameSize),16*global.GameSize,
												Width-(16*global.GameSize),28*global.GameSize);
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
	sizeTiny	 = point_in_rectangle(mouse_x,mouse_y,16*global.GameSize+xBuffer,16*global.GameSize+yBuffer,
													24*global.GameSize+xBuffer,24*global.GameSize+yBuffer);
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
	sizeSmall	 = point_in_rectangle(mouse_x,mouse_y,32*global.GameSize+xBuffer,16*global.GameSize+yBuffer,
													40*global.GameSize+xBuffer,24*global.GameSize+yBuffer);
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
	sizeMedium	 = point_in_rectangle(mouse_x,mouse_y,48*global.GameSize+xBuffer,16*global.GameSize+yBuffer,
													56*global.GameSize+xBuffer,24*global.GameSize+yBuffer);
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
	sizeBig		 = point_in_rectangle(mouse_x,mouse_y,64*global.GameSize+xBuffer,16*global.GameSize+yBuffer,
													72*global.GameSize+xBuffer,24*global.GameSize+yBuffer);
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
	sizeLarge	 = point_in_rectangle(mouse_x,mouse_y,80*global.GameSize+xBuffer,16*global.GameSize+yBuffer,
													88*global.GameSize+xBuffer,24*global.GameSize+yBuffer);
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







