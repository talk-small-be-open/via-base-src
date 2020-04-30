accessing
newLine
	<cocoonParameter:
		'The string that separates lines in the exported document.
	This is often either LF or CR\+LF but any string is possible.'>
	^ self propertyAt: 'newLine' default: [ self defaultNewLine ]