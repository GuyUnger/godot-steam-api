extends Node

var api_
var user_stats_

var initialized:bool = false

func _ready():
	var settings = load("res://addons/steam_api/settings.tres")
	api_ = SteamAPI.new()
	if not api_.init(settings.app_id):
		push_error("Failed to init steam api. Is Steam running? Is the plugin activated? Did you do the setup in ProjectSettings > SteamAPI")
		return
	
	user_stats_ = SteamUserStats.new()
	user_stats_.request_current_stats()
	initialized = true

#warning-ignore:unused_argument
func _process(delta:float) -> void:
	api_.run_callbacks()

func set_achievement(name:String) -> void:
	if not initialized:
		push_warning("Attempt to set achievement '%s' but steam API isn't connected" % name)
		return
	user_stats_.set_achievement(name)
	user_stats_.store_stats();
	
func get_achievement(name:String) -> bool:
	if not initialized:
		push_warning("Attempt to get achievement '%s' but steam API isn't connected" % name)
		return false
	return user_stats_.get(name)

func clear_achievement(name:String) -> void:
	if not initialized:
		push_warning("Attempt to clear achievement '%s' but steam API isn't connected" % name)
		return
	user_stats_.clear_achievement(name)
	user_stats_.store_stats()
