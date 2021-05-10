as yet unclassified
renderContentOn: html
	html div class: 'zoomBox'; with: [
		html div class: 'header'; with: [
			title ifNotBlank: [ html span class: 'title'; with: title ].
			html span class: 'close'; with: [
				html anchor
					useBaseUrl;
					callback: [self decoratedComponent unzoom];
					with: [
						html iconClose.
	"					html t: 'general:back'"]]].
		self renderNextOn: html
	]