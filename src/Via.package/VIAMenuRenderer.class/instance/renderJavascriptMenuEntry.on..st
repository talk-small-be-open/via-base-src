as yet unclassified
renderJavascriptMenuEntry: aMenuEntry on: html
	html anchor
		class: aMenuEntry css;
		onClick: aMenuEntry script;
		with: [
			self renderIcon: aMenuEntry on: html.
			html text: aMenuEntry label]