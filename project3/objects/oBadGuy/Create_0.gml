
jumpSpeed = 15;
normalGravity = 1;
walksp=3;
normalSpeed = walksp;
depth = -1;

hp = 4;
flash = 0;

if(hasweapon)
{
	mygun = instance_create_layer(x,y,"Gun",AKe)
	with(mygun)
	{
		owner = other.id;
	}
}
//else mygun - noone;