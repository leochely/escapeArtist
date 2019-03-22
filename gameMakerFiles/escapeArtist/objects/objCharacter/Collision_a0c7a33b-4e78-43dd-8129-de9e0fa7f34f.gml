/// @description Reset player to beginning of level

if objLevelFinal.hasGreen{
	instance_destroy(other)
} else {
	x = initial_x
	y = initial_y

	playerHealth -= 10
}
