rendering
jsSend: anObject
	talkmasterComponent ifNil: [ ^ JSScript new ].
	
	^ talkmasterComponent jsSend: anObject