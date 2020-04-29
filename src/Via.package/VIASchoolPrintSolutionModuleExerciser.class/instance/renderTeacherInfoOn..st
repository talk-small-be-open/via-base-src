as yet unclassified
renderTeacherInfoOn: html
	html div: [
		html t: 'schoolPrintSolution:mediaDownloadLink'.
		html break.
		html anchor
			url: model permaUrlMedia;
			with: model permaUrlMedia.
		html break.
	]