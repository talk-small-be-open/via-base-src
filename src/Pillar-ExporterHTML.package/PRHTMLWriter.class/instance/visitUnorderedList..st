visiting-document
visitUnorderedList: aList
	canvas tag
		name: 'ul';
		with: [ super visitUnorderedList: aList ]