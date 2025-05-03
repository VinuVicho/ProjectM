extends Sprite2D

var pressing: bool = false

@export var maxLength: int = 50
@export var deadZone: int = 5

func _process(delta: float) -> void:
	if !pressing: return
	

func _on_button_button_down() -> void:
	pressing = true
	

func _on_button_button_up() -> void:
	pressing = false
