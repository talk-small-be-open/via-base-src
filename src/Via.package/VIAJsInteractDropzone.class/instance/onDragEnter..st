as yet unclassified
onDragEnter: anObject
	self on: 'dragenter' do: (anObject asFunction: #(event))