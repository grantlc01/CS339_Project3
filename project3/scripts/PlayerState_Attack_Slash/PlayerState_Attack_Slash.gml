// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack_Slash(){

	if(sprite_index != sSwing)
	{
		sprite_index = sSwing;
		image_index = 0;
		ds_list_clear(HitByAttack)
	}
	
	mask_index = sSwing
	var HitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y,Snake,HitByAttackNow,false);
	if (hits > 0)
	{
		for (var i =0; i < hits; i++)
		{
			var hitID = HitByAttackNow[ i];
			if(ds_list_find_index(HitByAttack,hitID)== -1)
			{
				ds_list_add(HitByAttackNow,hitID);
				with(hitID)
				{
					EnemyHit(2)
				}
			}
		}
	}
	ds_list_destroy(HitByAttackNow);
	mask_index = sMainCharacter
}