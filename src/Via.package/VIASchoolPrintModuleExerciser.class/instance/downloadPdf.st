actions
downloadPdf
	| generator file  |

	generator := VIAPdfGenerator component: self.

	file := VIATempFile pdfForXSendfile.

	generator
		targetName: file fileName;
		targetFolder: file directory;
		generate.
		
	self sendFileToBrowser: file named: (model fileDisplayName,'.pdf')