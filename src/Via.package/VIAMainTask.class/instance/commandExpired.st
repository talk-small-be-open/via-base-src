as yet unclassified
commandExpired

	self call: ((VIAStaticTextDisplayerComponent textKey: '321via:commandExpired')
		addDecoration: VIACenterContainerDecoration new;
		yourself)

"	self call: (VIAPluggableComponent new
		titleText: #main:commandExpired;
		contentText: #main:thisCommandIsExpired;
		showCloseButton: true;
		addDecoration: SIRWindowDecoration new;
		yourself)"