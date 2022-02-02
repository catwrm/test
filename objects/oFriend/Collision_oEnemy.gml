//check to see if there's a collision between player and top of enemy
if (y <= other.y - other.sprite_height*0.9)

	{
			//bounce in the air a bit
yVector = jumpForce;

EnemyHurt();
}
	//otherwise restart level
	else
		{
			PlayerHurt();
			
		}