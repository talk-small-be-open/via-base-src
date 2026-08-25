accessing
selectedComponent
	| association |
	association := (components detect: [ :each | each key = self selection ] ifNone: [ ^ nil ]).

	"Lazy creation of the component. Performance if having heavy components on the tabs."
	association value isBlock ifTrue: [ association value: association value value ].
	
	^ association value
	
