if (hp = 0)
{
	instance_change(oHeroDead,true);


	direction = point_direction(other.x,other.y,x,y);
	normalSpeed = lengthdir_x(6,direction);
	jumpSpeed = lengthdir_y(4,direction)-2;
	if (sign(normalSpeed) != 0) image_xscale = sign(normalSpeed);
}