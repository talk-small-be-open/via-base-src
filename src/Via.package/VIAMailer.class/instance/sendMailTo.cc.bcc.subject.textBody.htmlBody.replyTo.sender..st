delivery
sendMailTo: aToCollection cc: aCcCollection bcc: aBccCollection subject: subject textBody: body htmlBody: aComponent replyTo: aReplyEmailString sender: aWAEmailAddress
	| email to cc bcc sender isMultipart |
	
	self enabled ifFalse: [^nil].

	isMultipart := aComponent notNil.

	email := isMultipart ifTrue: [ VIAWaHtmlEmailMessage new ] ifFalse: [ WAEmailMessage new ].

	email
		headerAt: 'Return-path' put: ('postmaster@', website domain).
		
	"Allenfalls BCC hinzufügen, um Emailverkehr zu loggen"
"	self globalConfiguration loggingEmailAddress ifNotBlank: [:email |
		clone addBcc: (WAEmailAddress address: email)]."
	
	"Allenfalls reale Empfänger verhindern"
"	self globalConfiguration disableRealEmailRecipients
		ifTrue: [
			clone instVarNamed: 'to' put: OrderedCollection new.
			clone instVarNamed: 'cc' put: OrderedCollection new.
			clone instVarNamed: 'bcc' put: OrderedCollection new.
			clone addTo: (WAEmailAddress address: 'andreas.brodbeck@mindclue.ch')]."

	sender := aWAEmailAddress ifNil: [self defaultSender].

	email
		subject: subject;
		setStringBody: body;
		from: sender.
		
	isMultipart ifTrue: [ 
		email htmlComponent: aComponent.
	] ifFalse: [ 
		email
			headerAt: 'Content-Type' put: 'text/plain; charset=UTF-8';
			headerAt: 'Content-Transfer-Encoding' put: '8bit'.
	].

	to := aToCollection copyWithoutBlanks asOrderedCollection.
	cc := aCcCollection copyWithoutBlanks asOrderedCollection.
	bcc := aBccCollection copyWithoutBlanks asOrderedCollection.
	
	"Spezialfall, alle Empfänger leer (durch Fehler!): Mail nicht erzeugen"
	(to isEmpty and: [cc isEmpty and: [bcc isEmpty]]) ifTrue: [^nil].

"	isLogging ifTrue: [
		self logInfo: 'Email prepared to: ', (to joinUsing: ', ')]."
	
	to do: [:each | email addTo: (WAEmailAddress address: each)].
	cc do: [:each | email addCc: (WAEmailAddress address: each)].
	bcc do: [:each | email addBcc: (WAEmailAddress address: each)].

	email headerAt: 'Reply-To' put: (aReplyEmailString ifBlank: [self defaultReplyTo]).

	Transcript show: 'Sending email:'; cr.
	Transcript show: email plainMessage.
		
	email send