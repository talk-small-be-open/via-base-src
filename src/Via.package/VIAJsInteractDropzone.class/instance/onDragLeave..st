as yet unclassified
onDragLeave: anObject
	self on: 'dragleave' do: (anObject asFunction: #(event))