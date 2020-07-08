as yet unclassified
onTap: anObject
	self on: 'tap' do: (anObject asFunction: #(event))