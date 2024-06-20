as yet unclassified
manifestUrlFor: aWebsite id: aWebAppIdString tag: anOptionalTag
	| id tag url |
	id := aWebAppIdString ifBlank: [ '-' ].
	tag := anOptionalTag ifBlank: [ '-' ].
	url := '/webmanifest/', aWebsite code, '/', id, '/manifest.webmanifest'.
	
	anOptionalTag ifNotBlank: [ url := url, '?tag=', tag. ].

	^ url