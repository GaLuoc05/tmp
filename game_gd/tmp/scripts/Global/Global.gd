extends Node

# ENUM
enum Locale {VN, EN}

# CONST
const TRANSLATOR_LOCALES:Dictionary = {
	Locale.VN: "vn",
	Locale.EN: "en"
}

# SIGNAL
signal clock_tick

# VAR
var current_scene:Scene # scene hiện tại đang play (là Node gốc của game khi chạy).
#var game_clock:GameClock # đồng hồ đếm thời gian cho game (thời gian của game ko phải tg thực).
var clock:Clock # đồng hồ đếm thời gian chơi.
