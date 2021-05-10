as yet unclassified
editModel: aModel
	| editor |
	editor := VIAUserEditor model: aModel.
	
	self next: editor