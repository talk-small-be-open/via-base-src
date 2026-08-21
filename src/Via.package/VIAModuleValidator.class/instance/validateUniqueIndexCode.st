as yet unclassified
validateUniqueIndexCode

	self validateUniqueness
		of: #indexCodeString named: 'module:indexCode';
		beNilAllowed;
		beEmptyAllowed;
		within: [
			| others me |
			me := self module.
			others := me wd modules copy.
			others removeAllSuchThat: [ :each | each isSameFamily: me ].
			others
		]