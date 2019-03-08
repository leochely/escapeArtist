/// @description Create bridge if available

if num_bridges > 0 {
	instance_create_layer(other.x, other.y, "Instances", objBridge)
	instance_destroy(other)
	num_bridges--
}
