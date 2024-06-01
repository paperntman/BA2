function tile_to_screen_y(argument0, argument1){
var _tx = argument0;
var _ty = argument1;
return ((_tx - _ty) * (TILE_H + 0.5));
}