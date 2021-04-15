as yet unclassified
editKey: aKey
	| text |
	text := (VIAHelper pillarStringFromPillar: (self db uiTextAt: aKey)).

	[
		text := self
			requestMultiline: 'UI Text ', aKey
			default: text.

		text
			ifNil: [true]
			ifNotNil: [
				[self db uiTextAt: aKey put: text. true] on: VIAPillarSyntaxError do: [:e |
					self inform: 'Syntax Error: ', e messageText.
"					self inform: 'Syntax Error'."
					false
				].
			]
	] whileFalse.

"	self resetUiTextCaches"