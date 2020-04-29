as yet unclassified
onDragMove: anObject
	self on: 'dragmove' do: (anObject asFunction: #(event))