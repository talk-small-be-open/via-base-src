as yet unclassified
visitTable: aTable
	html table
"		parameterAt: 'style' put: 'border: solid thin';"
		with: [ super visitTable: aTable ]