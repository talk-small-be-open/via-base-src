private
newLineSymbolConversion
	self flag: #todo. "Use {MacOS/Unix/Win32}Platform>>lineEnding as soon as Pharo 3.0 is the lowest supported Pharo."
	^ Dictionary
		newFrom:
			{(#cr -> String cr).
			(#lf -> String lf).
			(#crlf -> String crlf).
			(#unix -> String lf).
			(#mac -> String lf).
			(#dos -> String crlf)}