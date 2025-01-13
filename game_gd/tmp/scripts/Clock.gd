class_name Clock

""" Clock để tính toán thời gian trong game và thời gian đã chơi game. """

# CONST
const SECOND_TO_GAME_HOUR:int = 10 # 10 second = 1 game_hour

# VAR
var game_hour:int
var game_day:int
var game_month:int
var seconds_played:int
var count_one_sec:float

# METHOD
func _init(time_played:float):
	self.time_played = time_played

func time(delta):
	count_one_sec += delta
	if count_one_sec:
		update_game_time()

func update_game_time():
	seconds_played += 1
	if seconds_played % SECOND_TO_GAME_HOUR == 0:
		update_game_hour()

func update_game_hour():
	game_hour += 1
	if game_hour == 24:
		game_hour = 0
		game_day += 1
		update_game_month()
		
func update_game_month():
	# Lấy ngẫu nhiên tỉ lệ xuất hiện tháng đủ (30 ngày)
	var day_of_month = randi_range(29,30)
	if game_day >= day_of_month:
		game_day = 0
		game_month += 1
		