as yet unclassified
onDropDeactivate: anObject
	self on: 'dropdeactivate' do: (anObject asFunction: #(event))