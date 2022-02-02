//code that runs every frame

levelTimer -= 1/room_speed;

if (levelTimer <= 0)
{
	room_restart();
}

right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_space);

//what direction player is moving
xDirection = right - left;

//speed + direction player is moving at
xVector = xDirection * xSpeed
yVector = yVector + grv;

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
			y = y + sign(yVector);
		}
		yVector = 0;
	}
//otherwise move as normal
y = y + yVector;

//if touching ground and jump is presed, fly
if (place_meeting(x, y + 1, oWall) and (jump))
{
	yVector = jumpForce;
}

//die + restart level
if (y >= room_height)

	{
		PlayerDeath();
	}
