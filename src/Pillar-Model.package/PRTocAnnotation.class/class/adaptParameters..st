protected
adaptParameters: someParameters
	| param |
	self parameters: someParameters haveSize: 2.
	param := self parameterAt: 'depthLevel' IsIntegerIn: someParameters.
	^ self parameterIsIntegerAt: 'level' inParameters: param