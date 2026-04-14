extends Node2D

var menu: bool  = false
var state: String = ''
@onready var node_menu: Control = get_node("UI/Menu")

func _on_button_menu_button_up() -> void:
    if menu == false:
        menu = true
        node_menu.show()
    else:
        menu = false
        node_menu.hide()
