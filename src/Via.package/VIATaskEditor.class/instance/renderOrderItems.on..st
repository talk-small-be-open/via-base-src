rendering-visitor
renderOrderItems: anOrderItems on: html
	self renderInputEditorFor: anOrderItems on: html with: [
		html skRow: [
			html skColumnWidth: 'three' with: [
				html label: [
					html checkbox on: #showNumbers of: anOrderItems.
					html text: ' Show numbers'].
		]].
		anOrderItems itemsContainer acceptRenderingVisitor: self on: html.
	]