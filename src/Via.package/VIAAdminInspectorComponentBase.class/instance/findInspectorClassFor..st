as yet unclassified
findInspectorClassFor: aModelObject
	^ VIAAdminModelInspector subclasses detect: [ :each | each handlesObject: aModelObject ] ifNone: [VIAAdminGenericModelInspector]