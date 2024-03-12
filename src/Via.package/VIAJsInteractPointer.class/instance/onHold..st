api
onHold: anObject
	self on: 'hold' do: (anObject asFunction: #(event))