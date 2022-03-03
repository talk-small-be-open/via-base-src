rendering
renderContentOn: html
	"Renders the given content, either a pluggable block or a full component instance"

	titleRenderBlock ifNotNil: [html heading level: 2; with: [titleRenderBlock value: html]].
	titleText ifNotNil: [html heading level: 2; with: titleText].
	contentRenderBlock ifNotNil: [html div: [ contentRenderBlock cull: html cull: self ]].
	contentComponent ifNotNil: [html div: contentComponent].
	contentText ifNotNil: [html paragraph: contentText].
	
	showCloseButton ifTrue: [
		html anchor
			class: 'button';
			callback: [self answer];
			with: 'Schliessen']