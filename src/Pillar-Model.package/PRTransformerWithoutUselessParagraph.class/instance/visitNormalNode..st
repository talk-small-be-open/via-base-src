visitor
visitNormalNode: node
	replacement push: {node}.
	self visit: node.
	^ replacement pop