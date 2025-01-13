class_name Attribute

""" Class to help manage attribute dictionary. """

# CONST
const SUM:String = "sum"
const TYPE:Dictionary = {
	Type.PERPECPTION:"perpecption", Type.IQ:"iq", Type.BMI:"bmi", Type.EQ:"eq", Type.WPW:"wpw"
}
const NAME:Dictionary = {
	Name.SIGHT:"sight", 
	Name.HEARING:"hearing", 
	Name.SMELL:"smell", 
	Name.TASTE:"taste", 
	Name.TOUCH:"touch",
	
	Name.SCIENCE:"science",
	Name.MILITARY:"military",
	Name.LANGUAGE:"language",
	Name.SOCIETY:"society",
	Name.ART:"art",
	
	Name.STRENGTH:"strength",
	Name.AGILITY:"agility",
	Name.VESTIBULAR:"vestibular",
	Name.DEXTERITY:"dexterity",
	Name.VITALITY:"vitality",

	Name.FRIENDLY:"friendly",
	Name.EMPATHETIC:"empathetic",
	Name.SINCERE:"sincere",
	Name.HUMBLE:"humble",
	Name.HUMOROUS:"humorous",
	
	Name.AMBITOUS:"ambitous",
	Name.HONORABLE:"honorable",
	Name.PERSISTENT:"persistent",
	Name.COURAGEOUS:"courageous",
	Name.LOYAL:"loyal"
}

# ENUM
enum Type {
	PERPECPTION, IQ, BMI, EQ, WPW # willpower
	}

enum Name {
	SIGHT, HEARING, SMELL, TASTE, TOUCH,
	
	SCIENCE,
	MILITARY,
	LANGUAGE,
	SOCIETY,
	ART,
	
	STRENGTH,
	AGILITY,
	VESTIBULAR,
	DEXTERITY,
	VITALITY,

	FRIENDLY,
	EMPATHETIC,
	SINCERE,
	HUMBLE,
	HUMOROUS,
	
	AMBITOUS,
	HONORABLE,
	PERSISTENT,
	COURAGEOUS,
	LOYAL
}

var att:Dictionary # dictionary version of attribute, to work with Nathan's Dialogue addon.

func _init(att:Dictionary):
	self.att = att

func get_attribute(type:Type, name:Name)->float:
	""" Transform from enum to String, then return the attribute value. """
	return att[TYPE.type][NAME.name]
	
func get_sum(type:Type)->float:
	""" Transform from enum to String, then return the sum of attribute type. """
	return att[TYPE.type][SUM]

func set_attribute(type:Type, name:Name, value:float):
	""" Transform from enum to String, then set the attribute value. """
	# From Attribute Name and Type (Enum), transform them to String
	# Set Attribute value to new value given
	var old_value:float = att[TYPE.type][NAME.name]
	att[TYPE.type][NAME.name] = value
	# Recalculate the Sum of Attribute Type
	att[TYPE.type][SUM] += (value - old_value)
