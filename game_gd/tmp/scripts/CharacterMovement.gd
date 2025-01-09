class_name CharacterMovement

""" Hỗ trợ movement cho các **CharacterBody2D** . Tức là dùng move_and_slide của Class CharacterBody2D."""

# ENUM
enum State {MOVING, IDLING, CROUCHING, CROUCHING_MOVING}

# CONST

# VAR
# Moving
var _max_speed:float = 0 #tmp
var character:CharacterBody2D
var speed:float = 0 # tốc độ hiện tại.
var _turn_speed:float
var _accelaration:float
var stopped:bool = true # thể hiện trạng thái dừng hoặc đang di chuyển của character.
var last_direction:int = 0

# Crouching
var crouched:bool = false

# METHOD
func _init(character:CharacterBody2D, _max_speed:float = 100, _accelaration:float = 1, _turn_speed:float = 0.3):
	self.character = character
	self._turn_speed = _turn_speed
	self._max_speed = _max_speed
	self._accelaration = _accelaration
	pass

func move(delta:float, direction):
	""" Di chuyển theo hướng (direction). PHẢI gọi hàm từ _process hoặc _physic_process để hoạt động (truyền tham số delta) """
	# DIRECTION
	# Nếu character đổi hướng di chuyển, giảm speed lại. 
	# dòng này phải chạy trước khi set stopped, vì khi đó stopped mâu thuẫn với direction.
	if(stopped and direction != 0): speed = _max_speed * _turn_speed

	# Nếu direction = 0 là người chơi dừng lại, set var stopped để dễ hiểu và dễ dàng tương tác.
	if(direction == 0): 
		stopped = true
		character.velocity.x = speed * last_direction
	else: 
		stopped = false
		character.velocity.x = direction * speed
	
	# Set last_direction dựa trên direction hiện tại.
	if(direction < 0): last_direction = -1
	if(direction > 0): last_direction = 1
	###
	
	# SPEED
	# Biến speed luôn luôn dương.
	if(speed < 0): speed = 0

	# Khi character di chuyển, speed tăng dần (accelarate) theo gia tốc (_accelaration).
	if(speed < _max_speed and not stopped): speed += _accelaration *delta*200

	# Khi character dừng lại, tốc độ giảm dần theo gia tốc (_accelaration).
	if(speed > 0 and stopped): 
		speed -= _accelaration*1.5 *delta*200
	###
	
	character.move_and_slide()
	#print(speed)

func is_stopped()->bool:
	""" Kiểm tra trạng thái của character, đang đứng im hay di chuyển. """
	return stopped

func crouch()->void:
	""" Cúi người. (Thường là khi đang stealth) """
	# SPEED
	# Khi cúi người thì max_speed và _accelaration giảm lại.
	_max_speed *= 0.75
	_accelaration *= 0.75
	crouched = true

func is_crouched()->bool:
	""" Kiểm tra người chơi đang cúi người hay ko. """
	return crouched

func stand_up()->void:
	""" Đứng dậy (khi đang cúi người). """
	# CROUCHED
	# Khi đang cúi người
	if crouched:
		_max_speed /= 0.75
		_accelaration /= 0.75
		crouched = false

func get_state()->State:
	""" Trả về trạng thái của body. """
	if stopped:
		if crouched: return State.CROUCHING
		else: return State.IDLING
	else:
		if crouched: return State.CROUCHING_MOVING
		else: return State.MOVING
	
