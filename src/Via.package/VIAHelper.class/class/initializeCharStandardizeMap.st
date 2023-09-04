as yet unclassified
initializeCharStandardizeMap
	| map |

	"Normal -> Others codepoints"
	map := {
		$' -> #(96 180 8216 8217 8219). "Akut, gravis, ..."
		$" -> #(8220 8221 8222 8223 171 187). "Quotes, french, ..."
	} asDictionary.
	
	CharStandardizeMap := IdentityDictionary new. 

	map keysAndValuesDo: [ :char :charValues |
		charValues do: [ :each |
			CharStandardizeMap at: each put: char asInteger]]