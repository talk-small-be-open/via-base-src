rendering
renderFooterOn: html
	model hasFootnotes ifTrue: [
		html div
			class: 'moduleFootnotes';
			with: [
				html div class: 'title'; with: 'Footnotes:'.
				html pillar: model footnotesPillar]]