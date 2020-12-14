mails
sendMassMailTo: aToCollection subject: aSubjectString pillarBody: aPillarDocument
	| textBody htmlBody failedRecipients |

	"Sends single email copies to many. Answers the emails which failed."

	htmlBody := VIAApplicationManager current massMailingHtmlEmailClass website: website.
	htmlBody mainPillar: aPillarDocument. 

	textBody := htmlBody asSimpleText.

	"OPTIMIZE: Speed break somewhere? But since we are communicating with
	localhost postfix, this should run very quick"
	failedRecipients := OrderedCollection new.
	aToCollection do: [ :each |
		[
			self sendMailTo: {each} subject: aSubjectString textBody: textBody htmlBody: htmlBody
		] on: Error do: [:error |
			self ifDevelopment: [ error pass ].
			failedRecipients add: each ]
	].

	^failedRecipients