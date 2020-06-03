as yet unclassified
commandExpired

	self call: ((VIAStaticTextDisplayerComponent textKey: 'via:commandExpired')
		addDecoration: VIACenterContainerDecoration new;
		yourself) onAnswer: [ self restart ]

"	self call: (VIAPluggableComponent new
		titleText: #main:commandExpired;
		contentText: #main:thisCommandIsExpired;
		showCloseButton: true;
		addDecoration: SIRWindowDecoration new;
		yourself)"