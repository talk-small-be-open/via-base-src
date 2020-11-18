rendering
jsSend: anObject
	p2pComponent ifNil: [ ^ self ].
	
	^ p2pComponent jsSend: anObject