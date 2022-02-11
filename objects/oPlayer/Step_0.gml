//code that runs every frame

right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
back = keyboard_check(vk_up);
forward = keyboard_check(vk_down);

//what direction player is moving
xDirection = right - left;
yDirection = forward - back;

//speed + direction player is moving at
xVector = xDirection * Speed
yVector = yDirection * Speed;

//position and movement of player

//check to see if there is an oWall to left/right. If so, stop movement. If not, coninue to moe as normal.
if (place_meeting(x + xVector, y, oWall))
	{
		//check 1 pixel in desired x direction until wall is hit
		//! means not
		while(!place_meeting (x + xVector, y, oWall))
		{
			//move 1 pixel in the direction plyer is moving
			x = x + xDirection;
		}
		//otherwise you are coming into contact w wall and should stop
		xVector = 0;
	}

//otherwise move as normal
x = x + xVector;

if (place_meeting(x, y + yVector, oWall))
	{
		//check 1 pixel in desired yDirection until wall is hit
		//sign means return the positive/negative sign of value
		//e.g. if yVector = -10, sign(yVector) = -1
		while (!place_meeting(x, y + sign(yVector), oWall))
		{
			//move one pixel in vertical direction plaer is moving
			y = y + yDirection;
		}
		yVector = 0;
	}
//otherwise move as normal
y = y + yVector;

//sprite change
if (keyboard_check(vk_right))
{
	sprite_index = sPlayerWalkR;
}
else
{
	if (keyboard_check(vk_left))
	sprite_index = sPlayerWalkL;
	else
	{
		if (keyboard_check(vk_up))
{
	sprite_index = sPlayerWalkB;
}
else
if (keyboard_check(vk_down))
{
	sprite_index = sPlayerWalk;
}
else
{
	sprite_index = sPlayerIdle
	}
}
}