as yet unclassified
generateWithWkhtmltopdf
	| shellCommandString tempFile output |
	
	tempFile := VIATempFile html
		write: self xhtmlString;
		close;
		yourself.

	GRPlatform current ensureExistenceOfFolder: self targetFolder.
	
	"--footer-right [page]"
	"--disable-javascript because of 100% CPU hangs"
	"timeout, because of no risk of hanging"
	shellCommandString := 'timeout 30s ' binPath, 'wkhtmltopdf --disable-javascript --quiet --zoom 0.75 --encoding utf8 --page-size A4 --disable-forms --print-media-type --user-style-sheet "/css/print/wkhtmltopdf.css" "', (tempFile filePath), '" "', (self targetFilePath), '"'.

	output := MCLPlatform runShellCommand: shellCommandString.

	^self targetFilePath