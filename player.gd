extends CharacterBody2D


const SPEED = 300.0

var main_scene
var question_scene = load("res://question.tscn")
@export var question: Node2D
@export var coins_label: Label

var coins = 0

var current_chest_tier = 0

func _ready():
	main_scene = get_tree().current_scene
	question.visible = false
	pass

func _process(delta):
	coins_label.text = str(coins)
	pass

func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction_x = Input.get_axis("ui_left", "ui_right")
	var direction_y = Input.get_axis("ui_up", "ui_down")

	if direction_x:
		velocity.x = direction_x * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	if direction_y:
		velocity.y = direction_y * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
