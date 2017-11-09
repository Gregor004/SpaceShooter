
extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var gameRunning = false

func _ready():
	# Initialization here
	set_process(true)
	
func _process(delta):
	if gameRunning == false:
		if (Input.is_action_pressed("ui_accept")):
			gameRunning = true
			get_node("Label_Info").set_text("Running")
	else:
		if (Input.is_action_pressed("ui_cancel")):
			gameRunning = false
			get_node("Label_Info").set_text("Game Over")
			
			
			
	
		
		
	
