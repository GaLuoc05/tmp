class_name Effect

""" Hiệu Ứng mà Character đang bị ảnh hưởng """

# ENUM
enum Name {
	BLEED
}

# CONST
const TIME:Dictionary = {
	Name.BLEED : 2
}

# VAR
var effects:Array[Name] # Những hiệu ứng đang ảnh hưởng

func _init(effects:Array[String]):
	for effect in effects:
		var name:Name = Name.get(effect.to_upper())
		if name != null: self.effects.append(name)
	
