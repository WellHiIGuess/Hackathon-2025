extends Node2D


@export var question_data: QuestionData
@export var player: CharacterBody2D
var last_visible

@export var question_label: Label
@export var answers: Array[Area2D]
var level = 0

func _process(delta):
	if last_visible != visible && visible:
		if question_data == null:
			return
		var questions = question_data.questions
		var keys = questions.keys()
		var question = keys[randi_range(0, keys.size() - 1)]
		var current_answers = questions[question]

		for i in range(0, current_answers.size()):
			answers[i].text.text = current_answers.keys()[i]
			answers[i].correct = current_answers[current_answers.keys()[i]]

		question_label.text = question
		level = player.current_chest_tier


	last_visible = visible
	pass
