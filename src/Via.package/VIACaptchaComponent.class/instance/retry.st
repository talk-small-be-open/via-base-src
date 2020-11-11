as yet unclassified
retry
	retry := retry + 1.
	(retry >= maxRetryCount)
		ifFalse: [self calculateCaptchaCode]
		ifTrue: [self reactOnBadBehaviour]