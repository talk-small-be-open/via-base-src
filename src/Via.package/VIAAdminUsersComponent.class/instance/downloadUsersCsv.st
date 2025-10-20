as yet unclassified
downloadUsersCsv
	| tempFile csv csvText |
	tempFile := VIATempFile csvForXSendfile.
	
	csvText := String streamContents: [:stream |
		csv := (NeoCSVWriter on: stream).
		csv
			lineEndConvention: #lf;
			fieldWriter: #quoted;
			separator: $,.
		
		"Hinweis: Nicht writeHeader: verwenden, weil das immer quoted macht"
"		nextPut value: aHeadersCollection."
		csv writeHeader: #(LastName FirstName Email Roles LastLogin LoginCount).

		users sortedBySortKey do: [ :each |
			| rolesList |
			rolesList := MCLPlatform joinCollection: each roles delimiter: ','.
			
			csv nextPut: { each lastName. each firstName. each email. rolesList. (VIAHelper germanDateAndTimeStringFor: each lastLoginAt). each loginCount asString } ].
	
		csv close

	].

	tempFile write: csvText.

	self sendFileToBrowser: tempFile named: 'users.csv'