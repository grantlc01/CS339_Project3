/// @desc Creating and initializing things
//The speed of the player and how fast they go
/*
normalSpeed = 5;
//How high the player can jump as well as speed
jumpSpeed = 12;
//How much gravity there currently is. 0 if player is on the ground and 1 if the player is in the air
normalGravity = 1;
*/
//Depth being set as -1 keeps it on the ground and so other things can be put behind it as well.
depth = -1;
/*
hascontrol = true;
//Sets hp = 5
hp = 15;
*/
flash = 0;

if(hasAK = true)
	{
		myAK = instance_create_layer(x,y,"Gun",AKobject)
		


	}
else myAK = noone;
if(hasGrand = true)
	{
		myAK = instance_create_layer(x,y,"Gun",M1Grand_O)
		instance_destroy(m1a1_O)
		instance_destroy(O1897)
		instance_destroy(BAR_O)
		


	}
else myAK = noone;
if(hasBAR = true)
	{
		myAK = instance_create_layer(x,y,"Gun",BAR_O)
		instance_destroy(m1a1_O)
		instance_destroy(O1897)
		instance_destroy(M1Grand_O)


	}
else myAK = noone;
if(hasTommey = true)
	{
		myAK = instance_create_layer(x,y,"Gun",m1a1_O)
		instance_destroy(M1Grand_O)
		instance_destroy(O1897)
		instance_destroy(BAR_O)


	}
else myAK = noone;
if(has1897 = true)
	{
		myAK = instance_create_layer(x,y,"Gun",O1897)
		instance_destroy(m1a1_O)
		instance_destroy(M1Grand_O)
		instance_destroy(BAR_O)


	}
else myAK = noone;


