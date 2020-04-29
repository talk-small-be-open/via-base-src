as yet unclassified
onDrop: anObject
	self on: 'drop' do: (anObject asFunction: #(event))