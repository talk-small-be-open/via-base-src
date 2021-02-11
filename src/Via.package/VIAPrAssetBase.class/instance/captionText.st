as yet unclassified
captionText
	"Remarks: The pillar parser creates the caption-part as children objects"
	
	"Quick & dirty. Take just the first item"
	^ self hasChildren ifFalse: [ nil ] ifTrue: [
		self children first text trimBoth ]