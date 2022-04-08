as yet unclassified
validateUniqueIndexCode

	self validateUniqueness
		of: #indexCodeString named: 'module:indexCode';
		beNilAllowed;
		beEmptyAllowed;
		within: [ self module wd modules ]