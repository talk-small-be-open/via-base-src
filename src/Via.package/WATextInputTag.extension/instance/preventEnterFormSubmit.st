*Via
preventEnterFormSubmit
	self onKeyDown: ('if (event.key === "Enter") { event.preventDefault() }' asFunction: #(event))