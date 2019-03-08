/// @description Put glue down

if num_glues > 0 {
	instance_create_layer(x, y, "Instances", objGlue)
	num_glues--
}