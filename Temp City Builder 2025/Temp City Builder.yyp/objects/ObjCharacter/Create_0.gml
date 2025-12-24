/// @description Insert description here
// You can write your code in this editor

// Draw Vars

Sprite		= SprCharacter;
Frame		= 0;
frameSpeed	= 0.1;
Facing		= choose(-1,1);
Colour		= c_white;
Visible		= 1;
Rot			= 0;

// Vars
maxHp		= 3;
Hp			= maxHp;
Home		= 0;
workHut		= 0;

maxSpeed	= .5;//withgamespeed
xSpeed		= 0;
ySpeed		= 0;
Accel		= .5;
Decel		= .5;
xOrbit		= 0;//where we will try to stary // set to home in wander
yOrbit		= 0;
yStart		= 0;//log where your home was
xStart		= 0;
xTo			= 0;//the point where we want to travel to
yTo			= 0;
Dis			= 16 * global.GameSize;//distance to travel
Dir			= 0;//direction to travel
randomDir	= 60;//how much to randomize the direction to travel
timePassed	= 0;
Sleeping	= 0;

atWork		= 0;
atEntity	= 0;

buildSpeed	= 1;//withgamespeed
meterSize	= 3;
meterHeight	= 10;
meterWidth	= 1;

enum CharState{
	sleep,
	idle,
	wander,
	work,
	combat,
	hurt,
	die
}

State		= CharState.idle;
prevState	= State;
idleTime	= irandom_range(150,250);
Timer		= 0;


enum WorkState{
	towards,
	carry,
	build
}

Work		= WorkState.towards;

