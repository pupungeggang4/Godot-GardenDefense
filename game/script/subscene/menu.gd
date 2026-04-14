extends Control

@onready var node_scene = get_tree().current_scene

func _ready() -> void:
    pass

func _process(delta: float) -> void:
    pass

func _on_button_resume_button_up() -> void:
    if node_scene:
        hide()
        node_scene.menu = false

func _on_button_exit_button_up() -> void:
    if node_scene:
        hide()
        node_scene.menu = false
        get_tree().change_scene_to_file("res://scene/title.tscn")

func _on_button_quit_button_up() -> void:
    get_tree().quit()
