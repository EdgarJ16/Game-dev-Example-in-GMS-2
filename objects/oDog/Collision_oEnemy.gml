/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (!oDog.hit)
{
	
	direction=point_direction(x,y,oEnemy.x,oEnemy.y)+180;
    
	speed = 15

    oDog.hit = true;
    lives --;
	speed =0;
}