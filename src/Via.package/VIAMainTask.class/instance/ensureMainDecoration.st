adding
ensureMainDecoration
	"A task can have mutliple runs, and so we need to ensure, that this does only
	happen once"
	mainDecoration ifNil: [
		mainDecoration := self am mainDecorationClass new.
		self addDecoration: mainDecoration ]