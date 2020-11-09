extends MeshInstance

# var x = 1.234
# var y = 'hello'
var gain = 1
var step = PI/200;
var speed = 1

func _ready():
	#var up_vector = Vector3(0, 1, 0)
	#rotate(up_vector, PI/4)
	
#	var parent = get_parent()
#	var children = parent.get_children()
#	var button = parent.get_node("on_off_btn")
#	print(button.pressed)

	var button = get_parent().get_node("on_off_btn")
	button.connect("pressed", self, "doIt", [button])
	speed = int(button.pressed)
	doIt(button)
	pass

func doIt(btn):
	speed = int(btn.pressed)


func _process(delta):
	#rotate_object_local(Vector3(0, 1, 0), PI/50)
	#rotate(Vector3(0, 1, 0), step*gain)
	
	rotate_y(step*gain*speed);
	if gain < 15:
		gain*=1.005
#		show()
#	else:
#		hide()
	#print(gain)	
	

#func _physics_process(delta):
#	print(delta, '--', 1.0/60.0)

