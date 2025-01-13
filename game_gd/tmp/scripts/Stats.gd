class_name Stats

""" STATS """

# CONST
const STATS_STR:String = "stats"
const NAME:Dictionary = {
	Name.HP:"hp", Name.STAMINA:"stamina", Name.STRESS:"stress", Name.HUNGRY:"hungry"
}

# ENUM
enum Name {HP, STAMINA, STRESS, HUNGRY}

# VAR
var hp:float
var stamina:float
var stress:float
var hungry:float

func _init(hp:float, stamina:float, stress:float, hungry:float):
	self.hp = hp
	self.stamina = stamina
	self.stress = stress
	self.hungry = hungry

func from_dict(stats:Dictionary):
	""" Transfer data from a dictionary to this Stats """
	self.hp = stats[NAME[Name.HP]]
	self.stamina = stats[NAME[Name.STAMINA]]
	self.stress = stats[NAME[Name.STRESS]]
	self.hungry = stats[NAME[Name.HUNGRY]]

func to_dict()->Dictionary:
	""" Return a dictionary version of stats, to work with Nathan's Dialogue addon. """
	var stats:Dictionary
	stats[NAME[Name.HP]] = hp
	stats[NAME[Name.STAMINA]] = stamina
	stats[NAME[Name.STRESS]] = stress
	stats[NAME[Name.HUNGRY]] = hungry
	return stats
