extends Area2D


var can_click = false
@export var correct = true
@export var text: Label

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if can_click && Input.is_action_just_pressed("click") && get_parent().visible:
		if correct:
			# give points
			pass
		else:
			# don't give points
			pass

		get_parent().visible = false

	pass


func _on_mouse_entered():
	can_click = true
	pass # Replace with function body.


func _on_mouse_exited():
	can_click = false
	pass # Replace with function body.
