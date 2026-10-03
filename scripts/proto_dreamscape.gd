extends Node2D

@export var dream1: TileMapLayer
@export var dream2: TileMapLayer
@export var door3: RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	dream2.hide()
	door3.connect("found_dream", reveal_dream2)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func reveal_dream2():
	dream2.show()
