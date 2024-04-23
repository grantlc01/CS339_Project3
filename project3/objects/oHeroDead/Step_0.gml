if(done==0)
{
	// keep me out of things horizontally
	if place_meeting(x+hspeed, y, oPlatform) {
	    if hspeed < 0 {  // i'm about to hit on the left
	        //move_contact_solid(180, hspeed)
	    }
	    else { // i'm about to hit on the right
	        //move_contact_solid(0, hspeed)
	    }
	    hspeed = 0
	}

	// keep me out of things vertically
	
	if place_meeting(x, y+vspeed+gravity, oPlatform) {
		
		if(vspeed > 0)
		{
			done=1;
			image_index = 1;
			alarm[0] = 60;
		}
		
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
}



