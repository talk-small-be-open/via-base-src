as yet unclassified
manifestUrlFor: aWebsite id: aWebAppIdString tag: anOptionalTag
	| id tag |
	id := aWebAppIdString ifBlank: [ '-' ].
	tag := anOptionalTag ifBlank: [ '-' ].
	^ '/webmanifest/', aWebsite code, '/', id, '/', tag, '/manifest.webmanifest'