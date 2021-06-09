initialization
initialize
	super initialize.
	features := Set new.
	
	"OPTIMIZE: Since we can not detect ALL audio which could be inline in pillar..."
	self addFeature: 'audio'