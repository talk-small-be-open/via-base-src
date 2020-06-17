skeleton
skColumnWidth: aString
	"aString: one two three ... oder one-half, one-third, ..."
	^self div
		class: aString;
		class: 'columns';
		yourself