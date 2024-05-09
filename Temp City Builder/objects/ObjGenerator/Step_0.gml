/// @description Insert description here
// You can write your code in this editor


if(mapComplete == false){

////Create Biome Map
	
//for (var col = 0; col < roomY; col += 1){
				
//	var Y = yStart;
//	for(var row = 0; row < roomX; row += 1){
					
//		var _val =  PerlinNoise(X, Y);
//		//ObjMenu.loadAdding++;
//		//var _col_val = MapValue(_val, -1, 1, 0, 255);//get colour value
//		var _biomeval = floor(MapValue(_val, -1, 1, 0, 5));//0-number of biomes
//		//biome = _biomeval;
//		biomeMap[col,row] = _biomeval;
		
//		Y += biomeInc;
//	}
				
//	X += biomeInc;
//}


//Create height Map
	
for (var col = 0; col < roomY; col += 1){
				
	var Y = yStart;
	for(var row = 0; row < roomX; row += 1){
					
		var _val =  PerlinNoise(X, Y);
		//var _col_val = MapValue(_val, -1, 1, 0, 255);//get colour value
		
		var _groundval = floor(MapValue(_val, -1, 1, 0, 25));//0-number of ground tiles
		var _ground = -1;
		
		//Different weighted terrain
		
		if(global.mapType == Biome.coastal){
			if(_groundval < 4){_ground = 0;}//deepWater
			if(_groundval >= 4){_ground = 1;}//deepWatter->shallowWater
			if(_groundval >= 6){_ground = 2;}//shallowWater
			if(_groundval >= 8){_ground = 3;}//shallowWater->sand
			if(_groundval >= 10){_ground = 4;}//sand
			if(_groundval >= 13){_ground = 5;}//sand->grass
			if(_groundval >= 15){_ground = 6;}//grass

		}
		if(global.mapType == Biome.plains){
			if(_groundval < 5){_ground = 4;}//sand
			if(_groundval >= 5){_ground = 5;}//sand->grass
			if(_groundval >= 7){_ground = 6;}//grass
			if(_groundval >= 13){_ground = 7;}//grass->tallGrass
			if(_groundval >= 16){_ground = 8;}//tallGrass
			
		}
		if(global.mapType == Biome.hills){
			if(_groundval < 5){_ground = 6;}//grass
			if(_groundval >= 5){_ground = 7;}//grass->tallGrass
			if(_groundval >= 8){_ground = 8;}//tallGrass
			if(_groundval >= 13){_ground = 9;}//tallGrass->deepGrass
			if(_groundval >= 16){_ground = 10;}//deepGrass
			
		}
		
		if(global.mapType == Biome.varied){
			if(_groundval < 1){_ground = 0;}//deepWater
			if(_groundval >= 1){_ground = 1;}//deepWatter->shallowWater
			if(_groundval >= 2){_ground = 2;}//shallowWater
			if(_groundval >= 3){_ground = 3;}//shallowWater->sand
			if(_groundval >= 4){_ground = 4;}//sand
			if(_groundval >= 7){_ground = 5;}//sand->grass
			if(_groundval >= 9){_ground = 6;}//grass
			if(_groundval >= 14){_ground = 7;}//grass->tallGrass
			if(_groundval >= 16){_ground = 8;}//tallGrass
			if(_groundval >= 21){_ground = 9;}//tallGrass->deepGrass
			if(_groundval >= 23){_ground = 10;}//deepGrass
		}
		
		if(!instance_place(tileSize*row, tileSize*col,ObjTiles)){		
			var tile = instance_create_layer(tileSize*row, tileSize*col,"Ground_Layer", ObjTiles);
			with(tile){
				Sprite = global.biomeSprite;
				Frame = _ground;
			}
		}
		
		//draw_set_color(make_color_rgb(_col_val,_col_val,_col_val));//set
		//draw_rectangle(col, row, col +1, row +1,false);
					
		Y += mapInc;
	}
				
	X += mapInc;
}

mapComplete = true;

}








