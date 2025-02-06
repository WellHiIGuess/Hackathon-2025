extends Area2D


@export var upgrader: Node2D
@export var player: CharacterBody2D
@export var cost = 0
@export var tier = 0
var can_click = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("click") && can_click:
		if player.coins >= cost:
			var result = upgrader.upgrade(tier)

			if result:
				player.coins -= cost
	pass

func _on_mouse_entered():
	can_click = true
	pass # Replace with function body.


func _on_mouse_exited():
	can_click = false
	pass # Replace with function body.
