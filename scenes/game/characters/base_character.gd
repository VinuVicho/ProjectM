class_name BasicCharacter extends PhysicsBody2D

@export var health: int = 3;
@export var speed: int = 200;

var disabled := true

var characterState: CharacterState

func _process(delta):
	if ((health < 0) || disabled): return
	var direction = characterState.moveDirection
	
	var velocity = direction * speed
	
	var collision = move_and_collide(velocity * delta)							#Returns obj of collision
			#If CharacterBody2d
		#if direction:
			#velocity.x = direction.x * SPEED
			#velocity.y = direction.y * SPEED
		#else:
			#velocity.x = move_toward(velocity.x, 0, SPEED)
			#velocity.y = move_toward(velocity.y, 0, SPEED)
		#move_and_slide()
