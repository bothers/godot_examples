extends Node2D

const Center = Vector2(1024, 600) / 2

func _ready():
	# Make a sprite, and use the saved AtlasTexture as you
	# normally would a Texture
	var sword_sprite = Sprite.new()
	sword_sprite.texture = load("res://generated/sprite_0x0.tres")
	sword_sprite.position = Center - Vector2(16, 0)
	add_child(sword_sprite)

	var rotten_orange = Sprite.new()
	rotten_orange.texture = load("res://generated/sprite_2x3.tres")
	rotten_orange.position = Center + Vector2(16, 0)
	add_child(rotten_orange)
