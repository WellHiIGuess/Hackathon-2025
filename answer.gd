extends Area2D


var can_click = false
@export var correct = true
@export var text: Label
@export var question: Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if can_click && Input.is_action_just_pressed("click") && get_parent().visible:
		if correct:
			match question.level:
				0:
					question.player.coins += 4
				1:
					question.player.coins += 12
				2:
					question.player.coins += 33
				3:
					question.player.coins += 100

		get_parent().visible = false

	pass


func _on_mouse_entered():
	can_click = true
	pass # Replace with function body.


func _on_mouse_exited():
	can_click = false
	pass # Replace with function body.
