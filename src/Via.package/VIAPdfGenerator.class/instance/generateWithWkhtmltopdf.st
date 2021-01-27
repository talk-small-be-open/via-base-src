as yet unclassified
generateWithWkhtmltopdf
	| shellCommandString tempFile output |
	
	tempFile := VIATempFile html
		write: self xhtmlString;
		close;
		yourself.

	GRPlatform current ensureExistenceOfFolder: self targetFolder.
	
	"--footer-right [page]"
	shellCommandString := binPath, 'wkhtmltopdf --quiet --zoom 0.75 --encoding utf8 --page-size A4 --disable-forms --print-media-type --user-style-sheet "/css/print/wkhtmltopdf.css" "', (tempFile filePath), '" "', (self targetFilePath), '"'.

	output := MCLPlatform runShellCommand: shellCommandString.

	^self targetFilePath