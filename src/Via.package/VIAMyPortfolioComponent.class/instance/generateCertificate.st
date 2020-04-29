actions
generateCertificate
	| fileReference |
	fileReference := self generateCertificatePdf.
	self sendFileToBrowser: fileReference named: 'Certificato 321via.pdf'