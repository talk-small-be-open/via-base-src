visiting-document
visitInternalLink: anInternalLink
	| href |
	href := String new.
	self configuration separateOutputFiles
		ifTrue: [ 
			anInternalLink hasReference
				ifTrue: [ href := href , anInternalLink referenceAsHTML ] ]
		ifFalse: [ 
			(anInternalLink hasReference and: [ anInternalLink hasAnchor not ])
				ifTrue: [ 
					PRLinkWarning
						signal:
							'Your inter-file link will not be render because you export without separate output files. If you want your link to be render add an anchor to the beginning of your file.' ] ].
	anInternalLink hasAnchor
		ifTrue: [ href := href , '#' , anInternalLink anchor ].
	canvas tag
		name: 'a';
		parameterAt: 'href' put: href;
		with: [ 
					anInternalLink counter isValidCounter
						ifTrue: [ 
							self writeCounter: anInternalLink counter.
							canvas nextPutAll: ' ' ].
					super visitInternalLink: anInternalLink ]