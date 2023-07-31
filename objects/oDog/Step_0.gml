/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(lives == 0){
	score = 0;
game_restart();
}


if (hit)
{
    if (timer > 0)
    {
         timer --;
    }
    else
    {
		direction =0; 
         hit = false;
         timer = timerMax;
    }
}





//eventos de teclas 
moveRight = keyboard_check(vk_right);
moveUp = keyboard_check(vk_up);
moveLeft = keyboard_check(vk_left);
moveDown = keyboard_check(vk_down);
biteRange=10;
//Calcular movimiento 

vx = ((moveRight - moveLeft)*walkSpeed);
vy = ((moveDown - moveUp  )*walkSpeed);
var flag = 0;
//Estatico 
if(vx==0&&vy == 0){

//Controla la animacion estatica

}


//En movimiento

if(vx!=0||vy != 0){


//Valida colisiones
if(!collision_point(x+vx,y,oParentAmbiente,true,true)){
x+=vx;
}

if(!collision_point(x,y+vy,oParentAmbiente,true,true)){
y+=vy;
}


if(vx > 0){ // Se mueve a la derecha 
sprite_index = sDogRgt;
flag = 1
}
if(vx < 0){ // Se mueve a la derecha 
sprite_index = sDogLft;
flag=2
}
if(vy < 0){ // Se mueve a la derecha 
sprite_index = sDogUP;
flag=3
}
if(vy > 0){ // Se mueve a la derecha 
sprite_index = sDogDwn;
flag=4;
}
}

//Controla la profundidad 




//Atack 
if (keyboard_check(vk_space)&&(cooldown<1)){
instance_create_layer(oDog.x,oDog.y,layer,Bite);
cooldown = 100;

}
if(instance_exists(Bite)){

if(point_distance(Bite.xstart,Bite.ystart,Bite.x,Bite.y)>70){
instance_destroy(Bite);
}

}


cooldown = cooldown - 1; 


