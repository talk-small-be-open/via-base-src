actions
reject
	onRejectBlock ifNotNil: [onRejectBlock value].
	self answer: false.