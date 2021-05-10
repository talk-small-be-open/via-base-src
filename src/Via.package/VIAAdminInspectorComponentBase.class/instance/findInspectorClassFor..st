as yet unclassified
findInspectorClassFor: aModelObject
	^ VIAAdminModelInspector allSubclasses detect: [ :each | each handlesObject: aModelObject ] ifNone: [VIAAdminGenericModelInspector]