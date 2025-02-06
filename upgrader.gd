extends Node2D


@export var chests: Array[Area2D]

func upgrade(tier) -> bool:
	if tier > 3:
		return false

	for chest in chests:
		if chest.tier < tier:
			chest.tier = tier
			return true

	return false
