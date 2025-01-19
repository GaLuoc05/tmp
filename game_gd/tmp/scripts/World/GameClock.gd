class_name GameClock

""" Clock tính thời gian của game. ** Mỗi game mỗi khác ** """

# ENUM
enum Type {HOUR, DAY, WEEK, MONTH}

# CONST
const SECOND_TO_GAME_HOUR:int = 10 # 10 second = 1 game_hour

# VAR
var hour:int
var day:int
var month:int

func

func _ready()->void:
	G.game_clock_tick.connect(tick)

func tick(seconds_played:int)->void:
	if seconds_played % SECOND_TO_GAME_HOUR == 0:
	update_game_hour()

func update_game_hour():
	hour += 1
	.emit(Type.GAME_HOUR)
	if hour == 24:
		G.clock_tick.emit(Type.GAME_DAY)
		hour = 0
		day += 1
		update_game_month()
		
func update_game_month():
	# Lấy ngẫu nhiên tỉ lệ xuất hiện tháng đủ (30 ngày)
	var day_of_month = randi_range(29,30)
	if game_day >= day_of_month:
		game_day = 0
		game_month += 1