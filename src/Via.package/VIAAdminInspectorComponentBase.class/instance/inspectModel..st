as yet unclassified
inspectModel: aModelObject
	| inspector |
	inspector := (self findInspectorClassFor: aModelObject) model: aModelObject.
	self next: inspector