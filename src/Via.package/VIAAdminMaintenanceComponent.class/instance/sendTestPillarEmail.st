actions
sendTestPillarEmail
	| email pillar string |
	email := self request: 'Email address?' default: 'andreas.brodbeck@mindclue.ch'.
	string := self requestMultiline: 'Pillar?' default: '-Dies ist ""fett""!
-und eine Liste
-mit 4 Elementen
-*Viertens ist ein Link>https://www.mindclue.ch*

Hier ein Code zwischen zwei Linien:
_
12345
_'.
	
	pillar := VIAHelper pillarFromPillarString: string.

	self wd mailer sendMailTo: { email } subject: 'TEST Pillar Email' pillarBody: pillar