as yet unclassified
displayMessageAndCallPublicApplication: aMessageText
	| displayer |
	displayer := VIAPluggableComponent new
		contentText: aMessageText;
		showCloseButton: true;
		addDecoration: VIACenterContainerDecoration new;
		yourself.
		

	self call: displayer onAnswer: [
		self callPublicApplication ].