// keep me out of things horizontally
if place_meeting(x+hspeed, y, oPlatform) {
   hspeed = - hspeed
}

// keep me out of things vertically
if place_meeting(x, y+vspeed+gravity, oPlatform) {
    if vspeed < 0 {  // i'm about to hit on the top
        //move_contact_solid(90, vspeed)
    }
    else {  // i'm about to hit on the bottom
		//show_message("bottom hit eminent")
        //move_contact_solid(270, vspeed)
        gravity = 0
    }
    vspeed = 0
}
// if i'm off the ground, give me gravity
else if !place_meeting(x, y+normalGravity, oPlatform) {
    gravity = normalGravity
}

// moving right
/*
if keyboard_check_direct(vk_right) or keyboard_check(ord("D")) {
    // is there space for me to move right?
    if !place_meeting(x+normalSpeed, y, wall) {
        hspeed = normalSpeed
    }
}
// moving left
if keyboard_check_direct(vk_left) or keyboard_check(ord("A")) {
    // is there space for me to move left?
    if !place_meeting(x-normalSpeed, y, wall) {
        hspeed = -normalSpeed
    }
}

// jumping
// am i on the ground, and is there space above my head to jump?
if keyboard_check_pressed(vk_space) and place_meeting(x, y+normalGravity, wall)
and !place_meeting(x, y-jumpSpeed, wall) {
    vspeed = -jumpSpeed
	image_index = 0;
}
*/
// friction to slow me down horizontally

hspeed *= .9

// animation


if(!place_meeting(x,y+1,oPlatform))
{
	
	image_speed = 0.5;
	sprite_index= sBadGuyI;
	
	
	
	if (sign(vspeed)>0){
	
		sprite_index = sBadGuyI;   // JUMPING ANIMATION
		
	}
	
	
	/*
	sprite_index= heroSpriteA
	image_speed =0;
	if(sign(normalGravity)>0) image_index=1; else image_index=0;
	
	*/
}
else
{
	
	if(hspeed != 0){
		
		
		if(hspeed >0){
			sprite_index=sBadGuyI;
		}
		
		
		else{
			sprite_index= sBadGuyI;
		}
	}
	
	
	/*
	image_speed = 1;
	if(normalSpeed==0)
	{
		sprite_index = heroSpriteR;
	}
	else
	{
		sprite_index = heroSpriteA;
	}
	
	*/
}
if (normalSpeed !=0) image_xscale= sign(normalSpeed);







