as yet unclassified
cleanupOldObjectsFromTrash
	| oldModels threshold |
	threshold := DateAndTime now - 30 days.
	oldModels := self trashedObjects select: [:each | each first < threshold]
		thenCollect: [ :each | each second ].

	"TODO: Maybe log those old objects"
	oldModels do: [ :each | self deleteFromTrash: each ].
"	self trashedObjects removeAll: oldModels"