if( hascontrol)
{ 
	// moving right
	if keyboard_check_direct(vk_right) or keyboard_check(ord("D")) {
	    // is there space for me to move right?
	    if !place_meeting(x+normalSpeed, y, oPlatform) {
	        hspeed = normalSpeed
			image_xscale = 1
			while(normalSpeed < finalspeed)
			{
				normalSpeed++
			}     
			
	    }
		hspeed *=drag 
	}
	// moving left
	if keyboard_check_direct(vk_left) or keyboard_check(ord("A")) {
	    // is there space for me to move left?
	    if !place_meeting(x-normalSpeed, y, oPlatform) {
	        hspeed = -normalSpeed
			image_xscale = -1
	    }
	}

	// jumping
	// am i on the ground, and is there space above my head to jump?
	if keyboard_check_pressed(vk_space) and place_meeting(x, y+normalGravity, oPlatform)
	and !place_meeting(x, y-jumpSpeed, oPlatform) {
	    vspeed = -jumpSpeed
		image_index = 0;
	}
	
        
		
}
if(controler)
{
	if (abs(gamepad_axis_value(4,gp_axislh)) > 0.2)
	{
		// moving right
		if max(gamepad_axis_value(4,gp_axislh),0) {
		    // is there space for me to move right?
		    if !place_meeting(x+normalSpeed, y, oPlatform) {
		        hspeed = normalSpeed
				image_xscale = 1
				while(normalSpeed < finalspeed)
				{
					normalSpeed++
				}     
			
		    }
			hspeed *=drag 
		}
		// moving left
		if  abs(min(gamepad_axis_value(4,gp_axislh),0)){
		    // is there space for me to move left?
		    if !place_meeting(x-normalSpeed, y, oPlatform) {
		        hspeed = -normalSpeed
				image_xscale = -1
		    }
		}

		// jumping
		// am i on the ground, and is there space above my head to jump?
		if gamepad_button_check_pressed(4,gp_face1) and place_meeting(x, y+normalGravity, oPlatform)
		and !place_meeting(x, y-jumpSpeed, oPlatform) {
		    vspeed = -jumpSpeed
			image_index = 0;
		}	
	}
}
else
{
	normalSpeed = 0;
	jumpSpeed = 0;
}
// friction to slow me down horizontally
key_attack = keyboard_check_pressed(ord("Q")) || gamepad_button_check_pressed(4,gp_face3) ;
hspeed *= .9

switch(state)
{	
	case PLAYERSTATE.FREE: PlayerState_Free(); break;
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_Attack_Slash(); break;
	case PLAYERSTATE.ATTACK_COMBO: PlayerState_Attack_Combo(); break;
}










