//trigger temp invincibility, take damage
function EnemyHurt()
{
	if(!other.isInvincible)
	{
		other.isInvincible = true;
		//alarm_set(0,2*room_speed);
		other.hp --;
		if (other.hp < 1)
		{
			EnemyDeath();
		}
	}
}

//restart level for enemy death
function EnemyDeath()
{
	instance_destroy(other);
	if (random_range(0,10) >4 )
	{
		instance_create_layer(other.x, other.y, "Instances", oCoin);
	}
}
