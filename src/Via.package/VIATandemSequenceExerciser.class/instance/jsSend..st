rendering
jsSend: anObject
	p2pComponent ifNil: [ ^ nil ].
	
	^ p2pComponent jsSend: anObject