x = owner.x;
y = owner.y;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if(instance_exists(Sonic_ninja))
{
	if( Sonic_ninja.x<x)image_yscale = -image_yscale;
	if(point_direction(Sonic_ninja.x,Sonic_ninja.y,x,y)<600)
	{
		image_angle = point_direction(x,y,Sonic_ninja.x,Sonic_ninja.y);
		countdown--;
		if (countdown <= 0)
		{
			if(!collision_line(x,y,Sonic_ninja.x,Sonic_ninja.y,oPlatform,false,false))
			{
				countdown = countdownrate;
				//Bullet code here
				with (instance_create_layer(x,y,"Bullets",oBulletE))
				{
					speed =25;
					direction = other.image_angle + random_range(-3,3)
					image_angle = direction;
				}
			}
		}
	}
}