class_name Clock

""" Clock để tính toán thời gian đã chơi game. """

# VAR
var seconds_played:int
var count_one_sec:float = 0

# METHOD
func _init(seconds_played:float):
	self.seconds_played = seconds_played

func time(delta)->void:
	if Engine.Timescale > 0: count_one_sec += delta / Engine.time_scale
	if count_one_sec >= 1.0:
		update_game_time()

func update_game_time()->void:
	seconds_played += 1
	G.clock_tick.emit()
