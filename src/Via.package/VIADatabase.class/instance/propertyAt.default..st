accessing
propertyAt: aSymbol default: aBlock
	^(self propertyAt: aSymbol) ifBlank: [
		self propertyAt: aSymbol put: aBlock value]