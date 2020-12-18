rendering
renderPreviewOn: html
	| id |
	html video
		id: (id := html nextId);
		preload: 'metadata';
		poster: self posterUrl;
		controls: true;
		autoplay: false;
		style: 'max-width:100%; max-height:100%';
		with: [
			html source
				type: self mimeType;
				url: self videoUrl.
			html text: 'Your browser does not support the video tag.'].
		
	^ id