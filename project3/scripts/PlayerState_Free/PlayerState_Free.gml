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
	sprite_index= Aidel;
	
	
	
	if (sign(vspeed)>0){
	
		sprite_index = Ajumping;   // JUMPING ANIMATION
		
	}
	
	
}
else
{

	if(hspeed != 0){
		
		
		if(hspeed >0){
			sprite_index=Arunning;
		}
		
		
		else{
			sprite_index= Aidel;
		}
	}
	
}
if (hspeed <= - normalSpeed) image_xscale = - image_yscale;

	if (key_attack) state = PLAYERSTATE.ATTACK_SLASH;
}

