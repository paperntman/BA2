function tile_to_screen_x(argument0, argument1){
var _tx = argument0;
var _ty = argument1;
return ((_tx - _ty) * (TILE_W * 0.5)) + (SCREEN_W * 0.5);
}