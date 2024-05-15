as yet unclassified
handleFiltered: aRequestContext

	| urlPath websiteCode manifestId tag website dict |
	urlPath := aRequestContext request url path.

	websiteCode := urlPath at: 2.
	
	website := VIADatabase current findWebsiteByCode: websiteCode.

	website ifNil: [ ^ self ].

	manifestId := urlPath at: 3.
	manifestId = '-' ifTrue: [ manifestId := nil ].

	tag := urlPath at: 4.
	tag = '-' ifTrue: [ tag := nil ].
	
	dict := website generateWebmanifestId: manifestId startTag: tag.
	
	aRequestContext respond: [ :response |
		response
			contentType: WAMimeType applicationJson;
			nextPutAll: dict asJson]