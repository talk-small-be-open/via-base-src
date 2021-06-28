as yet unclassified
renderUrlMenuEntry: aMenuEntry on: html
	html anchor
		url: aMenuEntry url;
		target: '_blank';
		class: aMenuEntry css;
		with: [
			self renderIcon: aMenuEntry on: html.
			html span class: 'menuEntryText'; with: aMenuEntry label]