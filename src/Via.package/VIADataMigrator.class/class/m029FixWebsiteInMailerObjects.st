as yet unclassified
m029FixWebsiteInMailerObjects

	(self db instVarNamed: 'websiteDatas') do: [:each |
		each mailer website: each website.
	]