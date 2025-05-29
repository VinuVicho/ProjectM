extends Control

@export var hero_data: Array[HeroData]

func _ready():
	for hero in hero_data:
		print("Name = ", hero.name, " HP = ", hero.hp)
