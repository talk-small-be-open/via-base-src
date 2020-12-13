as yet unclassified
sendMassNotification: aChannelName
	| recipients subject message messagePillar subjectPillar |

	(self websiteData mailingConfiguration shouldSendMailThrough: aChannelName) ifFalse: [ ^ self ].
	
	"Get activated recipients"
	recipients := self websiteData users select: [ :each | 
		each mailingConfiguration shouldSendMailThrough: aChannelName
	] thenCollect: [ :each | each email ].

	"Send the mass notification with the default ui text"
	subject := ('massNotification:', aChannelName asString, ':subject').
	message := ('massNotification:', aChannelName asString, ':message').
	subjectPillar := self db getUiText: subject language: self website language.
	messagePillar := self db getUiText: message language: self website language.
	
	self sendMassMailTo: recipients subject: subjectPillar text pillarBody: messagePillar