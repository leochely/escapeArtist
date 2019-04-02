/// @description Changes the volume of the music as the enemy gets closer
if(instance_exists(objCreature)){
	var distance = sqrt(power((objCharacter.x-objCreature.x),2)+power((objCharacter.y-objCreature.y),2));
	audio_sound_gain(sndLvl1, .5+10000/distance, 0);
}
else{
	audio_sound_gain(sndLvl1, 0.5, 0);	
}