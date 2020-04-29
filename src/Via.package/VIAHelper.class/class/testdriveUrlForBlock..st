as yet unclassified
testdriveUrlForBlock: aBlock
	| id |

	"WICHTIG: Testdrive muss in einer eigenen Session geöffnet werden, damit
	das UI nicht vom Backend kommt, sondern Frontend"

	"Kollissionen vermeiden"
	id := (1 to: 10) atRandom.
	
	self db propertyAt: (#testdriveInitBlock, id greaseString) asSymbol put: aBlock.
	^('/testdrive?id=', id greaseString).