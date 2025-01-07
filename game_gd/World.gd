extends Node2D

class_name World

"""
World (GLOBAL) là thế giới của game!
"""

# CONST
const SCENES: Array[Scene] = ["tmp"] # List(Scene) các scene tồn tại trong game.

# VAR
var current_scene: Scene # scene hiện tại đang play (là Node gốc của game khi chạy).
var clock: Clock # đồng hồ đếm thời gian cho game (thời gian của game ko phải tg thực).


