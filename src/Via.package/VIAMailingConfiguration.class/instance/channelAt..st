private
channelAt: aSymbol
	^ channelsData at: aSymbol ifAbsentPut: [ { #enabled->true } asDictionary ]