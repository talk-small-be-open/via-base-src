rendering
renderContentOn: html
	html div class: 'taskEditor'; with: [
		self renderValidationResults: validationResult on: html.
		
		self renderPillarPreviewDialogOn: html.
		
		task acceptRenderingVisitor: self on: html.

		html div: [
			html popupAnchor
				dependent: true;
				windowTitle: '321via Preview';
				callback: [self testdrive];
				with: 'Open preview of task ...'.
			html break; break]]