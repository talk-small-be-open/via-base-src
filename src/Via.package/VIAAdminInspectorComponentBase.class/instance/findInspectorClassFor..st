as yet unclassified
findInspectorClassFor: aModelObject
	^ (VIAAdminModelInspector allSubclasses sortedReversedBy: [:each | each priority])
	detect: [ :each | each handlesObject: aModelObject ] ifNone: [VIAAdminGenericModelInspector]