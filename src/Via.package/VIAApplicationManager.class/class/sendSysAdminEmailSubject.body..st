as yet unclassified
sendSysAdminEmailSubject: aSubject body: aBody
	| email sender domain protoWebsite recipient |
	
	recipient := (self db propertyAt: #sysadminEmail).
	recipient ifBlank: [ ^ self ].
	
	email := WAEmailMessage new.

	protoWebsite := self db websites first.
	domain := protoWebsite domain.
	
	email
		headerAt: 'Return-path' put: ('postmaster@', domain).
		
	sender := WAEmailAddress address: ('system@', domain).

	email
		addTo: (WAEmailAddress address: recipient);
		subject: aSubject;
		setStringBody: aBody;
		from: sender.
		
	email
		headerAt: 'Content-Type' put: 'text/plain; charset=UTF-8';
		headerAt: 'Content-Transfer-Encoding' put: '8bit'.
		
	Transcript show: 'Sending SYSADMIN email:'; cr.
	Transcript show: email plainMessage.
		
	email send