// player input
key_left = keyboard_check(ord("d")|| vk_left);
key_right = keyboard_check(ord("a") || vk_right);
key_up= keyboard_check(ord("w"));
keydown = keyboard_check(ord("s"));
key_jump= keyboard_check(vk_space);

accel_final = 0;




// calculate movement 
var move = key_right - key_left
var gAccel = .1;
var gDeccel = .12;

var airAccel = .09;
var airDeccel = .1;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,oWall)) && (key_jump)
{
	vsp = -7;
}

//horizontail collision
if(place_meeting(x+hsp,y,oWall))
{
	
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}

	hsp = 0;
		
}

x = x + hsp;
//vertical collision
if(place_meeting(x,y+vsp,oWall))
{
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	
	vsp = 0;
	
}

y = y + vsp;

//acceleration

if move != 0
	{
		if(last_h = move)
		{	
			last_h = hmove
			accel_final = 0
		}
	if accel_final <= accel_max
		{
			accel_final += accel
		}
	
	}
	
	else
	{
		if (accel_final > 0)
		{
			accel_final -= accel
		}
	
	}
if accel_final < accel
	{
		accel_final = 0
		last_h = 0
	}

hsp = accel_final * last_h

x += hsp
y += vsp



