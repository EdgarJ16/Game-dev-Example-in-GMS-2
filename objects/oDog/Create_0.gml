hit = false;
timerMax = 60;
timer = timerMax;
//Instanciando las variabled e movimiento

cooldown =0; 
//Variables
walkSpeed = 2.5; vx = 0; vy = 0; dir = 3; moveRight = 0; moveLeft = 0; moveUp = 0; moveDown = 0;


hasItem= noone;
hasItemX = x;
hasItemY = y;
nearbyItem = noone;
itemPrompt = noone;
lookRange = 15;
biteRange= 10;
// Revisa o escucha colision con objetos 

nearbyItem = collision_rectangle(x-lookRange,y-lookRange,x+lookRange,y+lookRange,oPadreItems,false,false);
if(nearbyItem){
if(itemPrompt == noone||itemPrompt== undefined){
show_debug_message("Se encontro el item")
itemPrompt = scr_showPrompt(nearbyItem,nearbyItem.x,nearbyItem.y-300);

}
if (!nearbyItem) {
scr_dismissPrompt(itemPrompt,1);

}
}

