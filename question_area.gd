extends Area2D


@export var player: CharacterBody2D
@export var tier = 0
@export var sprite: AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	sprite.frame = tier
	pass


func _on_body_entered(body):
	player.question.visible = true
	player.current_chest_tier = tier
	# ask question
	pass # Replace with function body.
