rendering
renderContentOn: html
	html div
		class: 'message';
		class: css;
		with: [
			message isTranslationKey
				ifTrue: [ html t: message ]
				ifFalse: [ html withLineBreaks: message ]
"			html tOrS: message"].
	"Render as button, that robots dont klick it"
	html form: [
		html ukSubmitButton
			callback: [self ok];
			t: 'general:ok']