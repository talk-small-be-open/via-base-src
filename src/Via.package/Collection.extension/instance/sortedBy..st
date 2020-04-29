*Via
sortedBy: aSymbolOrBlock
	^self sorted: [:a :b | (aSymbolOrBlock value: a) <= (aSymbolOrBlock value: b)]