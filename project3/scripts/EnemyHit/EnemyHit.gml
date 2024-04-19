// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyHit(){
	var _damage = argument0
	
	hp -= _damage
	flash = true
	if (hp > 0)
	{
		//state = ENEMYSTATE.HIT;
		hitnow = true
	}
	else
	{
		//state = ENEMYSTATE.DEAD;
	}
}