mails
sendMassMailTo: aToCollection subject: aSubjectString pillarBody: aPillarDocument
	| body htmlBody failedRecipients |

	"Sends single email copies to many. Answers the emails which failed."

	body := aPillarDocument text.

	htmlBody := [:html |
		VIAPrSeasideRenderer new
			seasideHtmlCanvas: html;
			start: aPillarDocument.
	].

	"TODO: Bremsen?"
	failedRecipients := OrderedCollection new.
	aToCollection do: [ :each |
		[
			self sendMailTo: {each} subject: aSubjectString textBody: body htmlBody: htmlBody
		] on: Error do: [:error |
			self ifDevelopment: [ error pass ].
			failedRecipients add: each ]
	].

	^failedRecipients