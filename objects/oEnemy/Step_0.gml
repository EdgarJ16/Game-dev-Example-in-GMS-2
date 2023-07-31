if (instance_exists(oDog)){
move_towards_point(oDog.x,oDog.y,spd);
}

if(hp == 0){
with(oGame)	{
global.GameScore = score + 5;
score= global.GameScore;
}
instance_destroy();
}