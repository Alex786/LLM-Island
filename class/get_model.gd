@icon("res://class/engineering_16dp_E0E0E0_FILL1_wght400_GRAD0_opsz20.svg")
extends HTTPRequest
class_name GetModel

@export var worker_id: String = ""

var headers: PackedStringArray = ["Client-Agent: unknown:0:unknown", "X-Fields: ", "type: text", "model_state: all"]

func _ready():
	self.request_completed.connect(self._http_request_completed)
	
	var generate_text = self.request("https://aihorde.net/api/v2/status/models",
	headers, HTTPClient.METHOD_GET, "{type: text}")
	
	
	if generate_text != OK:
		push_error("An error occurred in the HTTP request.")

# Called when the HTTP request is completed.
func _http_request_completed(result, _response_code, _rheaders, body):
	var json2 = JSON.new()
	json2.parse(body.get_string_from_utf8())
	var response = json2.get_data()

	print(response)
