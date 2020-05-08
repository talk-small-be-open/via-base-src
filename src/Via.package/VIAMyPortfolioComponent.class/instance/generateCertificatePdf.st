actions
generateCertificatePdf
	| generator file |

	generator := VIAPdfGenerator component: certificate.

	file := VIATempFile pdfForXSendfile.
	
	generator
		targetName: file fileName;
		targetFolder: file directory;
		generate.
		
	^file