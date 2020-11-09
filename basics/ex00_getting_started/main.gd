extends Spatial


const PERIOD = 0.5

var counter = 0
var light = null

func _ready():
	light = get_node("Light");
	light.light_energy = 0


func _process(delta):
	counter += 1
	if counter % int((60*PERIOD)) == 0:
		# Every 2 seconds
		if light.light_energy == 0:
			light.light_energy = 10
		else:
			light.light_energy = 0
		
