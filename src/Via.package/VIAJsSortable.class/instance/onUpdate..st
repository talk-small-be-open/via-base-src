as yet unclassified
onUpdate: anObject
	"This event is triggered when the user stopped sorting and the DOM position has changed.
	Only inside the same list, not across lists"

	self optionAt: 'onUpdate' put: (anObject asFunction: #(event))