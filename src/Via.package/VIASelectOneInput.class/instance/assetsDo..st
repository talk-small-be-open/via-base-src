as yet unclassified
assetsDo: aBlock
	"We have possibly assets in pillar strings"
	
	"OPTIMIZE: What, if other objects could be part of choices, which have assets?"
	
	| strings |
	strings := self choices select: [ :each | each isString ].
	VIAPrAssetEvaluator new withStrings: strings do: aBlock