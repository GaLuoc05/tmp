extends Node2D

class_name World

"""
World (GLOBAL) là thế giới của game!
"""
# ENUM

# CONST

# SIGNAL
signal game_clock_tick(type:GameClock.Type)

# VAR
var current_scene:Scene # scene hiện tại đang play (là Node gốc của game khi chạy).
var game_clock:GameClock # đồng hồ đếm thời gian cho game (thời gian của game ko phải tg thực).