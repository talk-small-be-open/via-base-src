as yet unclassified
parse: aString markersDo: aBlock
	| pillar  markerNames |
	pillar := self parse: aString.

	"Für eindeutige IDs bei den VIA-Markers sorgen"
	markerNames := OrderedCollection new.
	VIAPrMarkerProcessor pillar: pillar onEachBlock: [:marker |
		(markerNames includes: marker name)
			ifTrue: [marker addToName: markerNames size asString]
			ifFalse: [markerNames add: marker name]].

	aBlock ifNotNil: [
		VIAPrMarkerProcessor pillar: pillar onEachBlock: aBlock].
	
	^pillar