class_name Stats

""" STATS """

# CONST
const name:String = "stats"

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

func copy_dict(stats:Dictionary):
	""" Transfer data from a dictionary to this Stats """
	self.hp = stats[Name.find_key(Name.HP).to_lower()]
	self.stamina = stats[Name.find_key(Name.STAMINA).to_lower()]
	self.stress = stats[Name.find_key(Name.STRESS).to_lower()]
	self.hungry = stats[Name.find_key(Name.HUNGRY).to_lower()]

func to_dict()->Dictionary:
	""" Return a dictionary version of stats, to work with Nathan's Dialogue addon. """
	var stats:Dictionary
	stats[Name.find_key(Name.HP).to_lower()] = hp
	stats[Name.find_key(Name.STAMINA).to_lower()] = stamina
	stats[Name.find_key(Name.STRESS).to_lower()] = stress
	stats[Name.find_key(Name.HUNGRY).to_lower()] = hungry
	return stats
