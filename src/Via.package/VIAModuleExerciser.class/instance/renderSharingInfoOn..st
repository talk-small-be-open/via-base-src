rendering
renderSharingInfoOn: html
	| iframe |
	iframe := '<iframe src="', model permaUrlEmbed, '" width="700" height="800" style="border: 1px solid #999; resize: both; overflow: auto;" class="embeddedModule"></iframe>'.

	html t: 'moduleExerciser:sharing:permaUrl'; space.
	html span
		class: 'modulePermalink';
		selectOnClick;
		with: model permaUrl.

	html break.
	html t: 'moduleExerciser:sharing:htmlEmbedCode'; space.
	html span
		class: 'moduleEmbedHtml';
		selectOnClick;
		with: iframe.