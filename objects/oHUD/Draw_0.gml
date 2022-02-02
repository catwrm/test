//display coin + point count
draw_text(32,32, "coins: " +string(global.coins));
draw_text(32,64, "points: " +string(global.points));
draw_text(32,96, "hp: " +string(oPlayer.hp));
draw_text(32,128, "level time remaining: " + string(floor(oPlayer.levelTimer)))