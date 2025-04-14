accessing
currentPage: aNumber
	currentPage := aNumber.
	
	onPageChange ifNotNil: [ onPageChange cull: self ]