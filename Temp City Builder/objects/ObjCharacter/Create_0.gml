/// @description Insert description here
// You can write your code in this editor

// Vars
maxHp		= 3;
Hp			= maxHp;

maxspeed	= 2;//withgamespeed
xSpeed		= 0;
ySpeed		= 0;
xTo			= xstart;
yTo			= ystart;
Dir			= 0;
Facing		= 1;
timePassed	= 0;

buildSpeed	= 1;//withgamespeed
meterSize	= 3;
enum CharState{
	idle,
	wander,
	work,
	attack,
	hurt,
	die
}

State		= CharState.idle;

idleTime	= 200;
idleTimer	= 0;


enum WorkState{
	towards,
	carry,
	build
}

Work		= WorkState.towards;

// Draw Vars

Sprite		= SprCharacter;
Frame		= 0;
