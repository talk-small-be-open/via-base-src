as yet unclassified
renderContentOn: html
"	html div
		script: ((html jQuery this find: 'input, textArea, select') attributeAt: 'readonly' put: 'readonly');
		with: ["
	html div class: 'taskEditor readonly'; with: [
		html fieldSet
			attributeAt: 'disabled' put: 'disabled';
			with: [
				task acceptRenderingVisitor: self on: html].
		self renderButtonsOn: html.
	]