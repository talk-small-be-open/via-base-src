*Via
sortByKey: aSymbolOrBlock
	"Hinweis: GemStone definiert bereits sortBy:, deshalb anderer Name"
	self sort: [:a :b | (aSymbolOrBlock value: a) <= (aSymbolOrBlock value: b)]