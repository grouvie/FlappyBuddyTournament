extends Control
@onready var mute: Button = $Mute
const sound_on: String = "Sound: On"
const sound_off: String = "Sound: Off"

func _on_mute_pressed() -> void:
	if mute.text == sound_off:
		mute.text = sound_on
	else:
		mute.text = sound_off
	SoundManager.toggle_mute()
