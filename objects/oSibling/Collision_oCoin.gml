//during collision, destroy coin and boost points
instance_destroy(other);
global.coins +=1;
global.points +=100;