as yet unclassified
onDropActivate: anObject
	self on: 'dropactivate' do: (anObject asFunction: #(event))