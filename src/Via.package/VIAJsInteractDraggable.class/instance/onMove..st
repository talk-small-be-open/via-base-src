as yet unclassified
onMove: anObject
	self on: 'dragmove' do: (anObject asFunction: #(event))