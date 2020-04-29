as yet unclassified
generateWithWkhtmltopdf
	| shellCommandString tempFile output |
	
	tempFile := VIATempFile html
		write: self xhtmlString;
		close;
		yourself.
	
	"--footer-right [page]"
	shellCommandString := binPath, 'wkhtmltopdf --quiet --zoom 0.75 --encoding utf8 --page-size A4 --disable-forms --disable-javascript --print-media-type --user-style-sheet "/files/css/print/wkhtmltopdf.css" ', (tempFile filePath), ' "', (self targetFilePath), '"'.
	
	output := MCLPlatform runShellCommand: shellCommandString.
	
	^self targetFilePath