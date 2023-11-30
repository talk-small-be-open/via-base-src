as yet unclassified
clickSpan: aScript
	^ self span
		class: 'clickAction';
		onMouseDown: 'event.stopPropagation();';
		onClick: (('event.stopPropagation();' asJsStream, aScript) asFunction: #(event));
		yourself