extends Node

# The following constants hold the IDs of the purple block tile, named "barrier" below, and the
# and collision we'll replace it with.
# The IDs are generated by the GroundTiles' TileSet resource, and they depend on the order in which you created
# the tiles, starting with `0` for the first tile.

const BARRIER_ID := 1
const INVISIBLE_BARRIER_ID := 2

var _tracker := EntityTracker.new()

onready var _ground := $GameWorld/GroundTiles

func _ready() -> void:
	var barriers: Array = _ground.get_used_cells_by_id(BARRIER_ID)

	for cellv in barriers:
		_ground.set_cellv(cellv, INVISIBLE_BARRIER_ID)