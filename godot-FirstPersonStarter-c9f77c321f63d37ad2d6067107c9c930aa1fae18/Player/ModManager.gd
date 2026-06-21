extends Node

var active_mods = {}

func add_mod(mod_name, mod_instance):
	if not active_mods.has(mod_name):
		active_mods[mod_name] = mod_instance
		mod_instance.apply(get_parent())

func remove_mod(mod_name):
	if active_mods.has(mod_name):
		active_mods[mod_name].remove(get_parent())
		active_mods.erase(mod_name)
