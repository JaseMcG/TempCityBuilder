/// @description Insert description here
// You can write your code in this editor
event_inherited();

//character idle

if(State == CharState.idle){
	
	if(idleTime >= idleTimer){
		idleTimer = idleTimer+1*global.GameSpeed;
	}
	if(idleTime <= idleTimer){
		var i = irandom(1)
		if(i == 1){
			idleTimer = 0;
			Facing = Facing * -1;
		}
		if(i == 0){
			State = CharState.wander;
		}
	}
}
if(State != CharState.idle){
	idleTimer = 0;
}
if(State == CharState.wander){

	x = x + (choose(-1,0,1) * global.GameSpeed);
	y = y + (choose(-1,0,1) * global.GameSpeed);
}






