as yet unclassified
initializeCharStandardizeMap
	| map |

	"Normal -> Others codepoints"
	map := {
		$' -> #(96 180 8216 8217 8219). "Akut, gravis, ..."
	} asDictionary.
	
	CharStandardizeMap := IdentityDictionary new. 

	map keysAndValuesDo: [ :char :charValues |
		charValues do: [ :each |
			CharStandardizeMap at: each put: char asInteger]]