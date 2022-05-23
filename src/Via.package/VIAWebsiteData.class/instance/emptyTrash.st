as yet unclassified
emptyTrash
	"We nil the collection, since we create it lazy again"
	trashedObjects copy do: [ :each | self deleteFromTrash: each second ].
	trashedObjects := nil