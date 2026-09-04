extends RigidBody2D

var drag_start_position = Vector2.ZERO
var is_dragging = false

# This controls how hard the pen shoots. You will tweak this later!
@export var power_multiplier: float = 3.0 

func _input(event):
	# Listen for a left mouse click (which also acts as a screen touch due to our emulation settings)
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.is_pressed():
			# The moment the player touches the screen, record the exact pixel coordinates
			drag_start_position = event.position
			is_dragging = true
			
		elif is_dragging:
			# The moment the player lifts their finger/releases the click
			is_dragging = false
			var drag_end_position = event.position
			
			# Calculate the swipe. We subtract end from start so it shoots in the OPPOSITE direction of the pull (like a slingshot)
			var swipe_vector = drag_end_position - drag_start_position
			
			# Fire the physics engine impulse!
			apply_central_impulse(swipe_vector * power_multiplier)
