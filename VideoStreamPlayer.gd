extends VideoStreamPlayer

@export_node_path(HSlider) var slider

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node(slider).connect("value_changed", Callable(self, "_on_h_slider_value_changed"))
	get_node(slider).max_value = 120 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if stream_position >= 100:
		stream_position = 0
		get_node(slider).value = 0


func _on_h_slider_value_changed(value):
	stream_position = value

