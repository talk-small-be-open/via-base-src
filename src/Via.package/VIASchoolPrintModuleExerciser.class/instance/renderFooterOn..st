rendering
renderFooterOn: html
	model hasFootnotes ifTrue: [
		html div
			class: 'moduleFootnotes';
			with: [
				html div class: 'title'; t: 'schoolPrintModuleExerciser:footnotes'.
				html pillar: model footnotesPillar]]