protected
adaptParameters: someParameters
	| aKey |
	self parameters: someParameters haveSize: 1. 
	someParameters associations do: [ :assoc | aKey := assoc key ].
	^ self checkParameterAt: aKey into: someParameters 