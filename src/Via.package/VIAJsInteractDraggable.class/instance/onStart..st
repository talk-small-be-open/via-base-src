as yet unclassified
onStart: anObject
	self on: 'dragstart' do: (anObject asFunction: #(event))