p = instance_create_layer(x,y, "Instances",Throwattack)
if direction == 0 {
	p.direction = direction
}
else if direction == 180 {
	p.direction = direction
	p.image_xscale = -1
}
p.speed = 10
sprite_index= sThrow