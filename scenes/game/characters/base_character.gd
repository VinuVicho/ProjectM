class_name BasicCharacter extends PhysicsBody2D

@export var health: int = 3;
@export var speed: int = 200;

var disabled := true

var characterState: CharacterState

func prepareCharacter(bulletPlace: Node2D) -> void:
	$ShootComponent.prepare(bulletPlace)
	disabled = false

func _process(delta):
	if ((health < 0) || disabled): return
	var direction: Vector2 = characterState.moveDirection
	
	var velocity = direction * speed
	
	var shootDirection: Vector2 = characterState.aimDirection
	if (shootDirection != Vector2.ZERO):
		$ShootComponent.shoot(global_position, shootDirection)
	
	var collision = move_and_collide(velocity * delta)							#Returns obj of collision
			#If CharacterBody2d
		#if direction:
			#velocity.x = direction.x * SPEED
			#velocity.y = direction.y * SPEED
		#else:
			#velocity.x = move_toward(velocity.x, 0, SPEED)
			#velocity.y = move_toward(velocity.y, 0, SPEED)
		#move_and_slide()
