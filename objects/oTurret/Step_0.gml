if (isInvincible)
{
invTimer -= 1/room_speed;
if (invTimer < 0)
{
	invTimer = 0.5;
	isInvincible=false;
}
}

shotTimer -= 1/room_speed;

if (shotTimer <0)
{
	shotTimer = 3;
	var bullet = instance_create_layer(x, y, "Instances", oProjectile)
	with (bullet) 
	{
		speed = 6;
		direction = point_direction(x, y, oPlayer.x, oPlayer.y)
	}
}