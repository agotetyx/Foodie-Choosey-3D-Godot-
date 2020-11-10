extends Camera

onready var ray = self.get_node("FoodChooserRay")
var is_third_person = false

# Called when the node enters the scene tree for the first time.
func _ready():
	#cam_trans = self.get_camera_transform()
	pass # Replace with function body.

func _process(_delta):
	if Input.is_action_just_pressed("change_camera") and not is_third_person:
		self.transform.origin = Vector3(0.14, 0.853, 2.159)
		ray.cast_to.y = 2
		ray.cast_to.z = -10
		is_third_person = true
	elif Input.is_action_just_pressed("change_camera") and  is_third_person:
		self.transform.origin = Vector3(0,-0.024,0)
		is_third_person = false
		ray.cast_to.z = -5
		ray.cast_to.y = 0
		#ray.transform.origin.z = 10	
		
