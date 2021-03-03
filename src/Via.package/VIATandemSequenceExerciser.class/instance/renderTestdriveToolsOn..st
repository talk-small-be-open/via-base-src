rendering
renderTestdriveToolsOn: html
	self session isTestdrive ifTrue: [
		html div class: 'testdriveTools'; with: [
			html iconTestdrive; space.
			html span: 'TESTDRIVE: '.
			html anchor callback: [ self testdriveStart ]; with: 'Test Q&A only'
			 ] ]