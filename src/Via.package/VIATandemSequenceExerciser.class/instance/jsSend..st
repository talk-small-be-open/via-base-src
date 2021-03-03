rendering
jsSend: anObject
	p2pComponent ifNil: [ ^ JSScript new ].
	
	^ p2pComponent jsSend: anObject