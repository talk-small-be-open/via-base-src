as yet unclassified
cleanupOldObjectsFromTrash
	| oldModels threshold |
	threshold := DateAndTime now - 30 days.
	oldModels := self trashedObjects select: [:each | each first < threshold].

	"TODO: Maybe log those old objects"

	self trashedObjects removeAll: oldModels