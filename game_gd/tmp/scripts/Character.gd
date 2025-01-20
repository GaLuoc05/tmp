extends CharacterBody2D

class_name Character

""" Character """

# VAR
var id:String = "Character ID"
var _name:String = "Character Name"
var effect:Effect # list of effects this character currently has.
var attribute:Attribute
var stats:Stats
var movement:CharacterMovement
var gravity:CharacterGravity

# METHOD
func _physics_process(delta):
	pass
