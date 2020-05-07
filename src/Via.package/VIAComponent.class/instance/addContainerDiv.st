as yet unclassified
addContainerDiv
	| css classes |
	"Add a standard wrapping container div with the name of the component class"
	classes := OrderedCollection new
		add: self class;
		addAll: ((VIAPlatform current superClassesOf: self class) copyUpTo: VIAComponent);
		yourself.
		
	css := MCLPlatform joinCollection: (classes collect: [:each | each name asString]) delimiter: ' '.

	self addDivClass: css