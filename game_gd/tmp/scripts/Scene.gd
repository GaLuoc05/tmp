class_name Scene

"""
Node gốc của 'world game' mỗi khi game chạy (bên cạnh UI).
"""

# ENUM
enum Name {} # Tên của các game's scene (ko phải ui)

# CONST
const SCENES:Dictionary = {# Dictionary[enum Scene.Name:PackedScene] các scene tồn tại trong game.
}

# VAR
var player:Player
# var other_players:Array[OtherPlayer] # Các người chơi (coop) khác, nếu họ xuất hiện trong game.
var npcs:Array[Npc] 
var items:Array[Item]
var static_objects:Array[StaticObject]
# Vars static xuất hiện khi vào game
# var static_grounds:Array[StaticBody2D]
