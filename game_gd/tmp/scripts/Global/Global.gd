extends Node

# ENUM
enum Locale {VN, EN}
enum CoopType {SINGLE, TWOPLAYER}

# CONST
const TRANSLATOR_LOCALES:Dictionary = {
	Locale.VN: "vi",
	Locale.EN: "en"
}

# SIGNAL
signal clock_tick(seconds_played:int)

# VAR
var clock:Clock # đồng hồ đếm thời gian chơi.
