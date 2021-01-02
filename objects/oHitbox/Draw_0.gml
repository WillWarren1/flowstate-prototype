/// @description draw hitbox
draw_sprite_ext(sprite_index,0,x,y,xScale,yScale,angle,c_red,0.75)

var ex, ey;
ex = instance_nearest(x, y, oEnemy).x;
ey = instance_nearest(x, y, oEnemy).y;
draw_text(x, y-20, point_distance(x, y, ex, ey));