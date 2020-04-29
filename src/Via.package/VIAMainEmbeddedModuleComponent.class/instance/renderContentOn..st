as yet unclassified
renderContentOn: html

	"Kein Ballast"
	html div class: 'embeddedModule'; with: [
		self renderHeaderOn: html.
		self renderCoreOn: html]