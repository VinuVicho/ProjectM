extends Node2D

var playerCharacterState: CharacterState

func _init() -> void:
	playerCharacterState = CharacterState.new()

func _ready() -> void:
	playerCharacterState.relatesTo = $BaseCharacter
	$BaseCharacter.characterState = playerCharacterState
	$BaseCharacter.disabled = false

func _on_move_joystick_joystick_input(strength, dir, delta) -> void:
	playerCharacterState.moveDirection = dir

func _on_aim_joystick_joystick_input(strength, dir, delta) -> void:
	playerCharacterState.aimDirection = dir
