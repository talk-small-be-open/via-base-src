as yet unclassified
clickSpanButton: aScript
	^ self spanButton
		class: 'clickAction';
		onMouseDown: 'event.stopPropagation()';
		onClickNoPropagation: aScript;
"		onClick: (('event.stopPropagation();' asJsStream, aScript) asFunction: #(event));"
		yourself