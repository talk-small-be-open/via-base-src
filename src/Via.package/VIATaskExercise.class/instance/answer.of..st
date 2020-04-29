as yet unclassified
answer: aSymbol of: aTaskBrick
	| dict answer |
	dict := self answersOf: aTaskBrick.
	answer := dict at: aSymbol asSymbol ifAbsentPut: [
"		self halt."
		aTaskBrick createNewAnswerObject].
		
	answer touch.

	^answer