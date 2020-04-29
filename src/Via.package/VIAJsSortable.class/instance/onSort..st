as yet unclassified
onSort: anObject
	"This event is triggered when the user stopped sorting and the DOM position has changed.
	Also between different lists. Same as onAdd+onUpdate+onRemove"

	self optionAt: 'onSort' put: (anObject asFunction: #(event))