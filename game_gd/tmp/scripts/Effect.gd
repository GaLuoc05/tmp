class_name Effect

""" Hiệu Ứng mà Character đang bị ảnh hưởng. 
Effect chỉ ảnh hưởng tới chỉ số (stats và attributes) của nhân vật. """

# ENUM
enum Name {
	BLEED
}
enum Data {
	TIME, DEAL_EFFECT
}

# CONST
const TIME:Dictionary = {
	Name.BLEED : 2
}
const NAME = {
	Name.BLEED:"bleed"
}
const E_NAME = {
	"bleed":Name.BLEED
}

# VAR
var effects:Array[Name] = [] # Những hiệu ứng đang ảnh hưởng
var data:Dictionary = {}

func _init(effects:Array[Name]=[]):
	for effect in effects:
		add_effect(effect)

func from_strings(effects:Array[String]=[])->void:
	for effect in effects:
		add_effect(E_NAME[effect])

func to_strings()->Array[String]:
	var str_effects:Array[String] = []
	for effect in effects:
		str_effects.append(NAME[effect])
	return str_effects

func add_effect(name:Name)->void:
	effects.append(name)
	data[Data.TIME] = TIME[name]

