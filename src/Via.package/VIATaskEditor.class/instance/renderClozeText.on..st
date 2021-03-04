rendering-visitor
renderClozeText: aClozeText on: html
	self renderInputEditorFor: aClozeText on: html with: [
"		html heading level2; with: 'Cloze text'."
		self renderOn: html quickHelp: 'Write cloze text gaps with _underscores_ markers. Use _c:blabla_ for choice style. Use _d:blabla_ for drag & drop style. After saving, you get more options for your gaps'.
		html label: 'Cloze text:'.
		aClozeText isParseOk ifFalse: [
			self renderPillarSyntaxError: aClozeText parseError on: html].

		self renderPillarInput: #clozeTemplateString of: aClozeText cssClass: 'clozeText' on: html.

		aClozeText placeholders do: [:each |
	"TODO? Toolbox:		html anchor
				callback: [ ];
				with: 'Change to select box'."
			each acceptRenderingVisitor: self on: html]]