initialization
htmlWriter
	"Lazy, since we normally dont need it"
	^ htmlWriter ifNil: [htmlWriter := VIAPrHtmlWriter new]