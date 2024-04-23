// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack_Slash(){
	
	
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

	if(sprite_index != sSwing)
	{
		sprite_index = sSwing;
		image_index = 0;
		ds_list_clear(hit_by_attack)
	}
	
	mask_index = sSwingHB
	var HitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y,oBadGuy,HitByAttackNow,false);
	if (hits > 0)
	{
		for (var i =0; i < hits; i++)
		{
			
			var hitID = HitByAttackNow[|i];
			if(ds_list_find_index(hit_by_attack,hitID)== -1)
			{
				ds_list_add(HitByAttackNow,hitID);
				with(hitID)
				{
					bad_guy_HP =- 2*vspeed;
				}
			}
		}
	}
	ds_list_destroy(HitByAttackNow);
	mask_index = Aidel;
	
	if(animation_end())
	{
		sprite_index = Aidel;
		state = PLAYERSTATE.FREE;
	}
}