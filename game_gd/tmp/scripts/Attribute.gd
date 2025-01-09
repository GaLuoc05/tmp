class_name Attribute

""" Class to help manage attribute dictionary. """

# CONST
const SUM:String = "sum"

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
	var attribute_type:String = Type.find_key(type).to_lower()
	var attribute_name:String = Name.find_key(name).to_lower()
	return att[attribute_type][attribute_name]
	
func get_sum(type:Type)->float:
	""" Transform from enum to String, then return the sum of attribute type. """
	var attribute_type:String = Type.find_key(type).to_lower()
	return att[attribute_type][SUM]

func set_attribute(type:Type, name:Name, value:float):
	""" Transform from enum to String, then set the attribute value. """
	var attribute_type:String = Type.find_key(type).to_lower()
	var attribute_name:String = Name.find_key(name).to_lower()
	att[attribute_type][attribute_name] = value
