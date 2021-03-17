as yet unclassified
assetsDo: aBlock
	"subclasses can do better"
	self childBricks do: [:each | each assetsDo: aBlock]