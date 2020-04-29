url
urlDisplayName
	^String streamContents: [:s |
		| urlEncoder name |
		name := self displayName.
"		name := name copyWithoutAll: '!''<>'."
"		name := name select: #isLetter."
		urlEncoder := GRPlatform current urlEncoderOn: s.
		(name findTokens: ' ()') do: [:eachToken |
			| text |
			text := (eachToken select: #isAlphaNumeric).
			text := VIAHelper normalizeAccents: text.
			urlEncoder nextPutAll: text]
		separatedBy: [s nextPut: $-]]