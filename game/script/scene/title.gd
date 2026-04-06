extends Node2D

func _ready() -> void:
    pass
    
func _process(delta: float) -> void:
    pass

func _on_button_start_gui_input(event: InputEvent) -> void:
    if event is InputEventMouseButton and event.pressed:
        if event.button_index == MOUSE_BUTTON_LEFT:
            get_tree().change_scene_to_file('res://scene/character_select.tscn')

func _on_button_collection_gui_input(event: InputEvent) -> void:
    if event is InputEventMouseButton and event.pressed:
        if event.button_index == MOUSE_BUTTON_LEFT:
            get_tree().change_scene_to_file('res://scene/collection.tscn')

func _on_button_quit_gui_input(event: InputEvent) -> void:
    if event is InputEventMouseButton and event.pressed:
        if event.button_index == MOUSE_BUTTON_LEFT:
            get_tree().quit()
