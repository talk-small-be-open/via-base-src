api
onDoubletap: anObject
	self on: 'doubletap' do: (anObject asFunction: #(event))