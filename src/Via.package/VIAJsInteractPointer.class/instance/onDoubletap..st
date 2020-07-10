as yet unclassified
onDoubletap: anObject
	self on: 'doubletap' do: (anObject asFunction: #(event))