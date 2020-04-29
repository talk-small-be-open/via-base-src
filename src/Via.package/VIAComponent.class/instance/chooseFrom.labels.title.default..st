dialogs
chooseFrom: aCollection labels: aLabelBlock title: aText default: anObject
	| dialog |


	dialog := (VIAChoiceDialog new
"			messageText: aText;"
			options: aCollection;
			selection: anObject;
			yourself).
			
"	aMultiBoolean ifTrue: [dialog beMultiselect]."

	aLabelBlock ifNotNil: [
		dialog 
			labelBlock: aLabelBlock.
"			beLabelSorted"].
			
	^self app lightbox: aText component: dialog