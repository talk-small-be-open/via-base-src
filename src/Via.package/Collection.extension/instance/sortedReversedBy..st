*Via
sortedReversedBy: aSymbolOrBlock
	^self sorted: [:a :b | (aSymbolOrBlock value: b) <= (aSymbolOrBlock value: a)]