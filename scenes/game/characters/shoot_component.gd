extends Node
#Probably in future make as another scene

var bullet = preload("res://scenes/game/characters/bullet/common_bullet.tscn")
var bulletField: Node2D

func prepare(whereToPlaceBullet: Node2D) -> void:
	bulletField = whereToPlaceBullet

func shoot(positionOfStart: Vector2, rotation: Vector2):
	if (!$WeaponCooldown.is_stopped()): return
	if (bulletField == null): Logger.log_error("Where to place bullet is missing")
	
	$WeaponCooldown.start()
	var created = bullet.instantiate()
	created.setVelocity(rotation)
	bulletField.add_child(created)
	created.global_position = positionOfStart
