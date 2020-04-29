as yet unclassified
onEnd: anObject
	self on: 'dragend' do: (anObject asFunction: #(event))