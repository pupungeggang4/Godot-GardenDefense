extends Node2D

var selected_character: int = -1

func _ready() -> void:
    for i in get_node('CharacterButtons').get_child_count():
        var button = get_node('CharacterButtons').get_child(i)
        button.id = i
        button.button_up.connect(select_character.bind(button))

func _on_button_back_button_up() -> void:
    get_tree().change_scene_to_file('res://scene/title.tscn')

func _on_button_start_button_up() -> void:
    if selected_character != -1:
        get_tree().change_scene_to_file('res://scene/battle.tscn')

func select_character(button: Node) -> void:
    selected_character = button.id
    get_node('TextDescription').text = 'Selected %d' % [selected_character]
