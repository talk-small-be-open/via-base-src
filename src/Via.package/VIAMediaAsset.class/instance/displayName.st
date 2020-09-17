as yet unclassified
displayName
	^self classDisplayName, ': ', (self title ifBlank: ['noname'])

	", ' (', (self fileName ifBlank: ['nofile']), ')'"