as yet unclassified
renderActionMenuEntry: aMenuEntry on: html
	html anchor
		class: aMenuEntry css;
		callback: aMenuEntry actionBlock;
		with: [
			self renderIcon: aMenuEntry on: html.
			html span class: 'menuEntryText'; with: aMenuEntry label]