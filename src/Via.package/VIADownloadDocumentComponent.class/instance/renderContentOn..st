rendering
renderContentOn: html
	html paragraph pT: textMessage.

	html script: 'function downloadClicked() {
	$("#downloadDocument_closeButton").show();
	$("#downloadDocument_closeAnchor").hide();
}'.
	
	html ukAnchorButton
		class: 'btn-success';
		onClick: (JSStream on: 'setTimeout(downloadClicked, 500)');
		callback: [self performAction];
		with: [
			html iconDownload; space.
			html strong; t: 'downloadDocument:downloadNow'; space.
			html text: documentName].
	
	html div class: 'topBuffer'; with: [
		html ukAnchorButton
			id: 'downloadDocument_closeButton';
			style: 'display: none';
			callback: [self close];
			t: 'downloadDocument:iHaveDownloaded'.
		html anchor
			id: 'downloadDocument_closeAnchor';
			class: 'text-muted small';
			callback: [self close];
			with: [
				html small t: 'downloadDocument:closeWithoutDownload']]