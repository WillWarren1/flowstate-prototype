/// foundation of this file was built by Rat Casket and purchased in the Bundle for Racial Justice and Equality.
/// on itch.io, the store page can be found here: https://ratcasket.itch.io/hitboxes-and-hurtboxes

draw_set_color(c_black);
var flowUI = instance_nearest(x, y, oPlayer).flow < 1 ? 0 : 18 * instance_nearest(x, y, oPlayer).flow

draw_sprite_stretched(sprHealthBlock, -1, 34, 46, 90 * (instance_nearest(x, y, oPlayer).hp / instance_nearest(x, y, oPlayer).hpMax), 10);
draw_sprite_stretched(sprFlowBlock, -1, 34, 62, flowUI, 10);
draw_sprite(sprUIFuckGMS2,-1,32,42);


