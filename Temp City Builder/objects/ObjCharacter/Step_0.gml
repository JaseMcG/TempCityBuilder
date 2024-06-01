/// @description Insert description here
// You can write your code in this editor
event_inherited();
if(instance_exists(Home)){
	xStart = Home.x;
	yStart = Home.y+16;
}
if(!instance_exists(Home)){
	Home = 0;
}
xOrbit = xStart;
yOrbit = yStart;
#region No Work

if(State == CharState.idle){
	
	if(idleTime >= Timer){
		Timer = Timer+1*global.GameSpeed;
	}
	if(idleTime <= Timer){
		var i = 0;//choose(0,1);
		if(i == 1){
			Timer = 0;
			Facing = Facing * -1;
		}
		if(i == 0){
			State = CharState.wander;
			Timer = 0;
			
		}
	}
}
	
if(State == CharState.wander){
	if(instance_exists(Home)){
		xOrbit = Home.x;
		yOrbit = Home.y+16;
	}
	//set destination
	if(xTo == 0 && yTo == 0){
		Dir = point_direction(x,y,xOrbit,yOrbit) + irandom_range(randomDir,-randomDir);
		xTo = x + lengthdir_x(Dis,Dir);
		yTo = y + lengthdir_y(Dis,Dir);
	}
	
	//go to destination
	if(xTo != 0 && yTo != 0){
		Frame += frameSpeed * global.GameSpeed;
		var _distogo = point_direction(x,y,xTo,yTo);
		var _speed = maxSpeed;
		if(_distogo <= maxSpeed){_speed = _distogo;}
		xSpeed = lengthdir_x(_speed,Dir);
		ySpeed = lengthdir_y(_speed,Dir);
		if(xSpeed != 0){Facing =  sign(xSpeed);}
		
		//stop at destination
		if((sign(xSpeed) == 1 && x >= xTo) || (sign(xSpeed) == -1 && x <= xTo)){
			xTo = 0;
			yTo = 0;
			xSpeed = 0;//max(0,xSpeed - Decel);
			ySpeed = 0;//max(0,ySpeed - Decel);

			Frame = 0;
			State = CharState.idle;
		}
	}
	
	//jiggle test
	//x = x + (choose(-1,0,1) * global.GameSpeed);
	//y = y + (choose(-1,0,1) * global.GameSpeed);
}
	
#endregion

if(State != CharState.combat || State != CharState.hurt){//determine sleep and work
	
	//set sleep
	if(global.GameTime == Time.night && State != CharState.sleep){
		State = CharState.sleep
		Timer = 0;
	}
	//set working
	if(workHut != 0 && State != CharState.sleep && State != CharState.work){
		State = CharState.idle;
		xTo = 0;
		yTo = 0;
		xSpeed = 0;//max(0,xSpeed - Decel);
		ySpeed = 0;//max(0,ySpeed - Decel);
		Frame = 0;
		Timer = 0;
		
		State = CharState.work;
	}
}

#region Working
if(State == CharState.sleep && Sleeping == false){
	if(instance_exists(Home)){
		xOrbit = Home.x;
		yOrbit = Home.y+16;
	}
	//go to home
	//set destination
	if(xTo == 0 && yTo == 0){
		Dir = point_direction(x,y,xOrbit,yOrbit);
		var _dis = point_distance(x,y,xOrbit,yOrbit);
		xTo = x + lengthdir_x(_dis,Dir);
		yTo = y + lengthdir_y(_dis,Dir);
	}
	
	//go to destination
	if(xTo != 0 && yTo != 0){
		Frame += frameSpeed * global.GameSpeed;
		var _distogo = point_direction(x,y,xTo,yTo);
		var _speed = maxSpeed;
		if(_distogo <= maxSpeed){_speed = _distogo;}
		xSpeed = lengthdir_x(_speed,Dir);
		ySpeed = lengthdir_y(_speed,Dir);
		if(xSpeed != 0){Facing =  sign(xSpeed);}
		
		//stop at destination
		if((sign(xSpeed) == 1 && x >= xTo) || (sign(xSpeed) == -1 && x <= xTo)){
			xTo = 0;
			yTo = 0;
			xSpeed = 0;//max(0,xSpeed - Decel);
			ySpeed = 0;//max(0,ySpeed - Decel);
			Frame = 0;
			Sleeping = true;
		}
	}
}
if(Sleeping == true && global.GameTime == Time.night){
	if(instance_exists(Home)){
		Visible = 0;
	}else Rot = 90;
}
if(Sleeping == true && global.GameTime == Time.day){
	//x = xstart;
	//y = ystart;
	State = CharState.idle;
	Sleeping = false;
	Rot = 0;
	Visible = 1;
}

if(State == CharState.work){
	if(instance_exists(workHut)){
		xOrbit = workHut.x;
		yOrbit = workHut.y+16;
	
		//go to work
		if(atWork == 0){
			//set destination
			if(xTo == 0 && yTo == 0){
				Dir = point_direction(x,y,xOrbit,yOrbit);
				var _dis = point_distance(x,y,xOrbit,yOrbit);
				xTo = x + lengthdir_x(_dis,Dir);
				yTo = y + lengthdir_y(_dis,Dir);
			}
	
			//go to destination
			if(xTo != 0 && yTo != 0){
				Frame += frameSpeed * global.GameSpeed;
				var _distogo = point_direction(x,y,xTo,yTo);
				var _speed = maxSpeed;
				if(_distogo <= maxSpeed){_speed = _distogo;}
				xSpeed = lengthdir_x(_speed,Dir);
				ySpeed = lengthdir_y(_speed,Dir);
				if(xSpeed != 0){Facing =  sign(xSpeed);}
		
				//stop at destination
				if((sign(xSpeed) == 1 && x >= xTo) || (sign(xSpeed) == -1 && x <= xTo)){
					xTo = 0;
					yTo = 0;
					xSpeed = 0;//max(0,xSpeed - Decel);
					ySpeed = 0;//max(0,ySpeed - Decel);

					Frame = 0;
					atWork = 1;
				}
			}
		}	
	}else{
		State = CharState.idle;
		Work = 0;
	}
}
if(State != CharState.work){
	atWork = 0;
}
#endregion

//Collision

x += xSpeed * global.GameSpeed;
y += ySpeed * global.GameSpeed;

/// testing stuff
//if(instance_exists(workHut) && instance_exists(Home)){
//	if(workHut != 0 && global.GameTime == Time.day){
//		x = workHut.x;
//		y = workHut.y + 4;
//	}
//	if(global.GameTime == Time.night){
//		x = Home.x;
//		y = Home.y + 4;
//	}
//}


