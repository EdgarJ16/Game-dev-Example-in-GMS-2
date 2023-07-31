/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(flagItem){
	
	switch(room_get_name(room)){
		case"rNivel1":
			room_goto(rNivel2);
		case "rNivel2":
			room_goto(rNivel3);
	}
	
}