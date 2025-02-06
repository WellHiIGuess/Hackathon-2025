extends Node2D


@export var question_data: QuestionData
var last_visible

@export var question_label: Label
@export var answers: Array[Area2D]

func _process(delta):
	if last_visible != visible && visible:
		var questions = question_data.questions
		var keys = questions.keys()
		var question = keys[randi_range(0, keys.size() - 1)]
		var current_question = questions[question]

		question_label.text = question

		for i in range(0, current_question.size()):
			answers[i].text.text = current_question[i]


	last_visible = visible
	pass
