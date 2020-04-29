initialization
initialize
	super initialize.
	
	buttons := {#ok->'ok'. #cancel->'cancel'} asOrderedCollection.
	cancelButtonNames := #(cancel abort).
	closeButtonNames := #(close).
	isDirtyChecked := false