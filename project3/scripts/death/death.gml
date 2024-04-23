// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function death(){

with(Sonic_ninja) instance_destroy();
instance_change(oHeroDead,true);


direction = point_direction(other.x,other.y,x,y);
normalSpeed = lengthdir_x(6,direction);
jumpSpeed = lengthdir_y(4,direction)-2;
if (sign(normalSpeed) != 0) image_xscale = sign(normalSpeed);
}