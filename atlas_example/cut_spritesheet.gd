tool
extends EditorScript


# Size of each sprite tile in pixels
var sprite_size = Vector2(16, 16)


func _run():
	var spritesheet = load("res://textures/spritesheet.png")

	var columns = floor(spritesheet.get_width() / sprite_size.x)
	var rows = floor(spritesheet.get_height() / sprite_size.y)

	# Template string used to name each sprite
	var base_name = "res://generated/sprite_%01dx%01d.tres"

	for column in columns:
		for row in rows:

			# Make the spritesheet
			var atex = AtlasTexture.new()

			# Set the base texture to the spritesheet
			atex.atlas = spritesheet

			# Set the region rect's position based on column/row
			atex.region = Rect2(16 * column, 16 * row, 16, 16)

			# Save it!
			var err = ResourceSaver.save(base_name % [column, row], atex)

			# and check if everything went okay
			if err != OK:
				printerr("Something went horribly wrong! %d" % err)
