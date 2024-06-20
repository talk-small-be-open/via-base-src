as yet unclassified
clickAnchorButton: aScriptString
	^ self anchorButton
		class: 'clickAction';
		onMouseDown: 'event.preventDefault();'; "Gewisse Browser entfernen hier die aktuelle Markierung"
		onClick: aScriptString;
		yourself