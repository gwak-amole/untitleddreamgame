extends Camera2D

@export var player: CharacterBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if player: 
		position.y = player.position.y
	
		position.y = clampf(position.y, 0, 640)
