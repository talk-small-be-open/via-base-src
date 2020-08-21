rendering
renderContentOn: html
	html div class: 'taskEditor'; with: [
		self renderValidationResults: validationResult on: html.
		self renderPillarPreviewDialogOn: html.

		html div: 'In module: ', module displayName.
				
		task acceptRenderingVisitor: self on: html.

		html div: [
			html popupAnchor
				dependent: true;
				windowTitle: 'Preview';
				callback: [self testdrive];
				with: 'Open preview of task ...'.
			html break; break]]