*Via
onClickNoPropagation: aJavascript
	self onClick: (('event.stopPropagation();' asJsStream, aJavascript) asFunction: #(event))