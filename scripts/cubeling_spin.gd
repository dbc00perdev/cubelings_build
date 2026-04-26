extends Node3D

# How fast the Cubeling spins.
# Try changing this number!
#   1   = slow gentle spin
#   5   = fast spin
#   0   = no spin
#  -1   = spins the OTHER way
@export var spin_speed: float = 1.0

func _process(delta):
	rotate_y(spin_speed * delta)
