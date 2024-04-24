as yet unclassified
clickSpan: aScript
	^ self span
		class: 'clickAction';
		onMouseDown: 'event.stopPropagation();';
		onClickNoPropagation: aScript;
"		onClick: (('event.stopPropagation();' asJsStream, aScript) asFunction: #(event));"
		yourself