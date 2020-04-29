as yet unclassified
visitDocumentItem: aPillarObject
	"Easy fallback solution. Actually should never come into here, since we cover
	everything in their own visit methods"
	html html: (self htmlWriter write: aPillarObject)