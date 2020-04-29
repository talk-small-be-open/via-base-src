as yet unclassified
dictionaryToParams: aDictionary
	"Dictionary {x->aaa y->bbb} gets to String x:aaa:y:bbb"

	^String streamContents: [:stream |
		aDictionary associations do: [:assoc |
			| key value |
			key := assoc key.
			value := assoc value.
			stream nextPutAll: key greaseString.
			stream nextPut: $/. 
			stream nextPutAll: value greaseString]
			separatedBy: [
				stream nextPut: $/]]