accessing
scrambledEmailAddresses
	<cocoonParameter:
		'Indicate if email addresses should appear scrambled to defeat the stupiest spammers looking for them (the default). If ==false==, email addresses will appear unscrambled.'>
	^ self propertyAt: 'scrambledEmailAddresses' default: [ self defaultScrambledEmailAddresses ]