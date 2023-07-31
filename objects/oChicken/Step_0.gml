/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
 posx = oDog.x;
 posy = oDog.y;

 distx = posx - x;
 disty = posy - y;

distance = point_distance(x,y,posx,posy)

if(distance < 10){
direction = point_direction(x,y,posx,posy) + 180
speed = 5; 
direction = 0;
}

