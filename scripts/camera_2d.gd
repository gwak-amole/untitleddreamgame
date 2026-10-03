extends Camera2D

@export var player: CharacterBody2D
@export var door3: RigidBody2D
@export var anim: AnimationPlayer

var cooldown = false

var max_height = 200
var old_pos_y: float
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	door3.connect("found_dream", reveal_dream2)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if player && !cooldown: 
		position.y = player.position.y - 100
	
		position.x = clampf(position.x, 0, 640)
		position.y = clampf(position.y, max_height, 360)

func reveal_dream2():
	old_pos_y = position.y
	max_height = -200
	anim.play("move_camera_dream2")
	await anim.animation_finished
	
