as yet unclassified
handleFiltered: aRequestContext

	| urlPath websiteCode manifestId tag website dict url |
	url := aRequestContext request url.
	urlPath := url path.

	websiteCode := urlPath at: 2.
	
	website := VIADatabase current findWebsiteByCode: websiteCode.

	website ifNil: [ ^ self ].

	manifestId := urlPath at: 3.
	manifestId = '-' ifTrue: [ manifestId := nil ].

	tag := url queryFields at: 'tag' ifAbsent: [ nil ].
"	tag := urlPath at: 4.
	tag = '-' ifTrue: [ tag := nil ]."
	
	dict := website generateWebmanifestId: manifestId startTag: tag.
	
	aRequestContext respond: [ :response |
		response
			contentType: WAMimeType applicationJson;
			nextPutAll: dict asJson]