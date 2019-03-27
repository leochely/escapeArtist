/// @description Get players location and move towards them

playerX = objCharacter.x
playerY = objCharacter.y
creatureSpeed = 2;
if (place_meeting(x, y, objGlue)) {
	creatureSpeed = creatureSpeed / 2;
}
move_towards_point(playerX, playerY, creatureSpeed);