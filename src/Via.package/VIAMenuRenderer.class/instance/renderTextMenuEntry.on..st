as yet unclassified
renderTextMenuEntry: aMenuEntry on: html
	html anchor
		url: '#';
		class: aMenuEntry css;
		with: [
			self renderIcon: aMenuEntry on: html.
			html span class: 'menuEntryText'; with: aMenuEntry label]