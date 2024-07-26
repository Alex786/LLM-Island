extends HTTPRequest
class_name AIHorde

#Description for class
##Node used to communicate with The AI Horde.
@export_category("Settings")

## The AI Horde API Key. The default key is for anonymous usage.
@export var AI_Horde_API_Key: String = "0000000000"

## delimited api key
var delimited_api_key: String = AI_Horde_API_Key + ":"

var payload: Dictionary = {
	"prompt": "What are your thoughts on corn?",
	"params": {
		"n": 1,
		"frmtadsnsp": false,
		"frmtrmblln": false,
		"frmtrmspch": false,
		"frmttriminc": false,
		"max_context_length": 1024,
		"max_length": 80,
		"rep_pen": 3,
		"rep_pen_range": 4096,
		"rep_pen_slope": 10,
		"singleline": false,
		"temperature": 5,
		"tfs": 1,
		"top_a": 1,
		"top_k": 100,
		"top_p": 1,
		"typical": 1,
		"use_default_badwordsids": true,
		"stop_sequence": [
			"string"
		],
		"min_p": 0,
		"smoothing_factor": 0,
		"dynatemp_range": 0,
		"dynatemp_exponent": 1
	},
	"softprompt": "string",
	"trusted_workers": false,
	"slow_workers": true,
	"worker_blacklist": false,
	"models": [
		"aphrodite/Sao10K/L3-8B-Lunaris-v1",
		"koboldcpp/Fimbulvetr-11B-v2",
		"aphrodite/nothingiisreal/L3-8B-Celeste-v1",
		"koboldcpp/c4ai-command-r-plus",
	],
	"dry_run": true,
	"disable_batching": false,
	"allow_downgrade": true,
	"webhook": "https://aihorde.net/api/v2/generate/text/async"
}

@onready var data_body: String = JSON.stringify(payload, "", false, false)

var headers: PackedStringArray = [delimited_api_key, "unknown:0:unknown"]

#test request
func _ready():
	# Create an HTTP request node and connect its completion signal.
	#print data_body to see what is being sent.
	print(data_body + "\n")
	self.request_completed.connect(self._http_request_completed)
	
	#send request
	var generate_text = self.request("https://aihorde.net/api/v2/generate/text/async",
	headers, HTTPClient.METHOD_POST, data_body)
	
	#error check
	if generate_text != OK:
		push_error("An error occurred in the HTTP request.")

# Called when the HTTP request is completed.
func _http_request_completed(_result, response_code, _headers, body):
	var json2 = JSON.new()
	json2.parse(body.get_string_from_utf8())
	var response = json2.get_data()

	# Will print the user agent string used by the HTTPRequest node (as recognized by httpbin.org).
	print(response, response_code)