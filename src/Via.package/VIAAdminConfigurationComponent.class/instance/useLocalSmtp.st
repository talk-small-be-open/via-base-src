as yet unclassified
useLocalSmtp
	self db propertyAt: #smtpServer put: 'localhost'.
	self db propertyRemoveAt: #smtpUsername.
	self db propertyRemoveAt: #smtpPassword.
	self db propertyAt: #smtpPort put: 25.

	self installSmtpConfig