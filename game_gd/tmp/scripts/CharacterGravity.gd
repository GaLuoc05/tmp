class_name CharacterGravity

""" 
GRAVITY CHO CHARACTER. 
*** Với Player, set jump = Input.is_action_pressed() và set just_jumped = Input.is_action_just_pressed() ***
"""

# ENUM
enum State {JUMPING, FALLING, IDLING}

# VAR
var character:CharacterBody2D

# Gravity
var _max_gravity:float
var g_accelaration:float # gravity accelaration
var gravity:float # current gravity

# Jumping
var jump:bool = false
var just_jumped:bool = false # biến hỗ trợ riêng cho Player, khi vừa mới ấn jump thì set true, sau đó false
var can_jump:bool = false
var jump_force:float
var jump_time:float = 0.3 # time character jumpppp before they start falling down
var jump_timer:float = jump_time
# jump_buff_timer - to help player jump imediately after pressing jump:
# trong lúc character đang rơi (sau khi nhảy), nếu character jump (vì lúc này can_jump chưa true) 
# ta tự động set can_jump = true khi nhân vật chạm đất
var jump_buff_time:float = 0.1
var jump_buff_timer:float = jump_buff_time
# coyote_time - to help player jump off cliff easier:
var coyote_time:float = 0.05
var coyote_timer:float = coyote_time
### 

# METHOD
func _init(character:CharacterBody2D, _max_gravity:float = 300, g_accelaration:float = 20, jump_force:float = 300, jump_time:float = 0.3):
	self.character = character
	self._max_gravity = _max_gravity
	self.g_accelaration = g_accelaration
	self.jump_force = jump_force
	self.gravity = _max_gravity/3
	self.jump_time = jump_time
	self.jump_timer = jump_time
	pass

func apply_gravity(delta:float)->void:
	""" PHẢI gọi hàm từ _process hoặc _physic_process để hoạt động (truyền tham số delta) """
	# TIMER
	# Cập nhật timer
	if jump_buff_timer > 0:
		jump_buff_timer -= delta
	if coyote_timer > 0:
		coyote_timer -= delta
	# jump_timer chỉ giảm khi đang jump
	if (jump_timer > 0 and jump):
		jump_timer -= delta
	# when jump_timer = jump_time hoặc character dừng jump, start falling down
	else:
		can_jump = false
		jump_timer = 0
		jump_buff_timer = 0
	
	# IS ON FLOOR ~ chân chạm đất
	# Only when character touch the floor và coyote_time cho phép (buff thời gian nhảy sau khi rời vực) that it can jump again
	if (character.is_on_floor() and not jump):
		can_jump = true
		coyote_timer = coyote_time
	elif (coyote_timer > 0): can_jump = true
	# Can_jump sẽ là true nếu character jump khi jump_time_buff cho phép dù chân ko chạm đất. 
	# tức là khi đang rơi mà nhảy lúc jump_time_buff cho phép thì lúc chạm đất sẽ nhảy.
	if (character.is_on_floor() and jump_buff_timer > 0): 
		can_jump = true
		coyote_timer = coyote_time
	
	# GRAVITY
	# Gravity luôn dương (giống speed). Nó là gravity_speed, biết sai ngữ pháp r nhưng mà kệ nó đi
	if (gravity < 0): 
		gravity = 0
	# gravity tăng dần đến max_gravity khi đang nhảy
	if (gravity < _max_gravity): gravity += g_accelaration * delta*200
	# gravity tăng vượt max_gravity khi rơi
	elif (not can_jump): gravity += g_accelaration/10 * delta*200
	
	# JUMPING:
	if jump and can_jump: # check if character is jumping and can jump?
		gravity = -jump_force - g_accelaration/10 * delta*200 # minus the gravity so it push the character instead
	# When character JUST jumped, reset jump_buff_timer
	if (just_jumped): jump_buff_timer = jump_buff_time 
	character.velocity.y = gravity # set character's velocity to the gravity
	
	# DEBUG
	#print(jump_time_buffer)
	#print(can_jump)

func start_jump()->void:
	""" Bắt đầu nhảy """
	jump = true

func stop_jump()->void:
	""" Dừng nhảy """
	jump = false

func get_state()->State:
	""" Trả về State của nhân vật. Khi nhảy mà hết cỡ -> rơi, khi đang nhảy mà ngừng nhảy -> rơi """
	if jump:
		if can_jump: return State.JUMPING
		else: return State.FALLING
	else:
		if can_jump: return State.IDLING
		else: return State.FALLING
