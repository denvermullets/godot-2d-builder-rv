class_name Entity
extends Node2D

export var deconstruct_fitler: String
export var pickup_count := 1

## Any initialization step occurs in this override-able `_setup()` function. Overriding it
## is optional, but if the entity requires information from the blueprint,
## such as the direction of power, this is where we will code provide this information.
## We haven't created the blueprint's type yet, so for now we leave it out. We'll code a `BlueprintEntity` type in a moment.

func _setup(_blueprint) -> void:
	pass