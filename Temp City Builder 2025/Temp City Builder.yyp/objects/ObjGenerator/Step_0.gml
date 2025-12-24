/// @description Insert description here
// You can write your code in this editor


if(mapComplete == false){


//Create height Map
var X = xStart;
for (var col = 0; col < roomY; col += 1){
				
	var Y = yStart;
	for(var row = 0; row < roomX; row += 1){
					
		var _val =  PerlinNoise(X, Y);
		//var _col_val = MapValue(_val, -1, 1, 0, 255);//get colour value
		
		var _groundval = floor(MapValue(_val, -1, 1, 0, 25));//0-number of ground tiles
		var _ground = -1;
		
		//Different weighted terrain

			if(_groundval < 9){_ground = 0;}//grass
			if(_groundval >= 9){_ground = 1;}//grass->tallGrass
			if(_groundval >= 11){_ground = 2;}//tallGrass
			if(_groundval >= 17){_ground = 3;}//tallGrass->deepGrass
			if(_groundval >= 19){_ground = 4;}//deepGrass
			
			
		if(!position_meeting(tileSize*row, tileSize*col, ObjTiles)){		
			var tile = instance_create_layer(tileSize*row, tileSize*col,"Ground_Layer", ObjTiles);
			with(tile){
				Sprite = global.biomeSprite;
				Frame = _ground;
				//Alpha = .5;
			}
		}
		
		//draw_set_color(make_color_rgb(_col_val,_col_val,_col_val));//set
		//draw_rectangle(col, row, col +1, row +1,false);
					
		Y += mapInc;
	}
				
	X += mapInc;
}

// create rivers
var X = xStart;
for (var col = 0; col < roomY; col += 1){
				
	var Y = yStart;
	for(var row = 0; row < roomX; row += 1){
					
		var _val =  PerlinNoise(X, Y);
		//var _col_val = MapValue(_val, -1, 1, 0, 255);//get colour value
		
		var _riverval = floor(MapValue(_val, -1, 1, 0, 100));//0-number of ground tiles
		var _river = -1;
			//if(_riverval == 47){_river = 4}
			if(_riverval == 46){_river = 5}
			if(_riverval == 47){_river = 4}
			if(_riverval == 48){_river = 3}
			if(_riverval >= 49 && _riverval <= 51){_river = 2;}
			if(_riverval == 52){_river = 3}
			if(_riverval == 53){_river = 4}
			if(_riverval == 54){_river = 5}
		if(_river != -1 && !position_meeting(tileSize*row, tileSize*col, ObjWaterTiles)){		
			var river = instance_create_layer(tileSize*row, tileSize*col,"Ground_Layer", ObjWaterTiles);
			with(river){
				Sprite = global.waterSprite;
				Frame = _river;
				//Alpha = .5;
			}
		}
		
		//draw_set_color(make_color_rgb(_col_val,_col_val,_col_val));//set
		//draw_rectangle(col, row, col +1, row +1,false);
					
		Y += riverInc;
	}
				
	X += riverInc;
}

//Create Resource Map
var X = xStart;
for (var col = 0; col < roomY; col += 1){
				
	var Y = yStart;
	for(var row = 0; row < roomX; row += 1){
					
		var _val =  PerlinNoise(X, Y);

		var _resourceval = floor(MapValue(_val, -1, 1, 0, 12));//0-number of biomes
		var _resource = 2;
		
		if (_resourceval <= treeSpawn)	{_resource = 0;}
		if (_resourceval = treeSpawn+1)	{_resource = 1;}
		//if (_resourceval = 6)			{_resource = 2;}
		if (_resourceval = rockSpawn-1)	{_resource = 3;}
		if (_resourceval >= rockSpawn)	{_resource = 4;}
		
		
		if(!position_meeting(tileSize*row, tileSize*col,ObjResourceTiles)){		
			var tile = instance_create_layer(tileSize*row, tileSize*col,"Ground_Layer", ObjResourceTiles);
			with(tile){
				Sprite = SprResourceTiles;
				Frame = _resource;
			}
		}
		
		//spawn Resources
		if(!position_meeting(tileSize*row,tileSize*col, ObjWaterTiles)){
			//spawn Trees
			if(_resource = 4 ){
				if(irandom(100) <= treeSpawnRate){
					var tree = instance_create_layer(tileSize*row, tileSize*col,"Instances", ObjTrees);
				}else{
					if(irandom(100) <= bushSpawnRate){
						var bush = instance_create_layer(tileSize*row, tileSize*col,"Instances", ObjBerryBush);
					}
				}
			}
			if(_resource = 3 ){
				if(irandom(100) <= treeSpawnRate/2){
					var tree = instance_create_layer(tileSize*row, tileSize*col,"Instances", ObjTrees);
				}else{
					if(irandom(100) <= bushSpawnRate/2){
						var bush = instance_create_layer(tileSize*row, tileSize*col,"Instances", ObjBerryBush);
					}
				}
			}
		
			//spawn Rocks
			if(_resource = 0 ){
				if(irandom(100) <= rockSpawnRate){
					var rock = instance_create_layer(tileSize*row, tileSize*col,"Instances", ObjRocks);
				}
			}
			if(_resource = 1 ){
				if(irandom(100) <= rockSpawnRate/2){
					var rock = instance_create_layer(tileSize*row, tileSize*col,"Instances", ObjRocks);
				}
			}
		}
		
		Y += resourceInc;
	}
				
	X += resourceInc;
}


mapComplete = true;

}








