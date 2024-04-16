// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Free(){
	// keep me out of things horizontally
	if place_meeting(x+hspeed, y, oPlatform) {
	    if hspeed < 0 {  // i'm about to hit on the left
     
	    }
	    else { // i'm about to hit on the right
 
	    }
	    hspeed = 0
	}

	// keep me out of things vertically
	if place_meeting(x, y+vspeed+gravity, oPlatform) {
	    if vspeed < 0 {  // i'm about to hit on the top
     
	    }
	    else {  // i'm about to hit on the bottom
	
	        gravity = 0
	    }
	    vspeed = 0
	}
	// if i'm off the ground, give me gravity
	else if !place_meeting(x, y+normalGravity, oPlatform) {
	    gravity = normalGravity;
	}
	
if(!place_meeting(x,y+1,oPlatform))
{
	
	image_speed = 0.5;
	sprite_index= sMainCharacter;
	
	
	
	if (sign(vspeed)>0){
	
		sprite_index = sMainCharacter;   // JUMPING ANIMATION
		
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
			sprite_index=sMainCharacter;
		}
		
		
		else{
			sprite_index= sMainCharacter;
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
if (hspeed <= - normalSpeed) image_xscale = - image_yscale;

}

if (KeyAttack) state = PLAYERSTATE.ATTACK_SLASH;