accessing
firstNumber
	^ parts detect: [ :each | each isNumber ] ifNone: [ nil ]