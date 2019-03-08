/// @description Restore stamina, spawn creature

playerStamina = 100

instance_create_layer(x, y - 100, "Instances", objCreature);
instance_destroy(other)