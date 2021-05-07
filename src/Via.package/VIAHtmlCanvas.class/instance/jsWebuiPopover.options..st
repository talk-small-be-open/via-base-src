rendering
jsWebuiPopover: aHtmlString options: aDictionaryLike
	| popoverOptions |
	popoverOptions := {
		#title->''.
		#content->aHtmlString.
		#closeable->true.
		#dismissible->true.
		#placement->'auto-top'.
		#trigger->'hover'.
		#multi->true.
		#padding->true.
	} asDictionary.
	
	popoverOptions addAll: aDictionaryLike asDictionary.

	^ (self jQuery this call: 'webuiPopover' with: popoverOptions)