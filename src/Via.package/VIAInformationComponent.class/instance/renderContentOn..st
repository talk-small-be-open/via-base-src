rendering
renderContentOn: html
	html paragraph with: [html tOrS: message].
	"Render as button, that robots dont klick it"
	html form: [
		html ukSubmitButton
			callback: [self ok];
			t: 'general:ok']