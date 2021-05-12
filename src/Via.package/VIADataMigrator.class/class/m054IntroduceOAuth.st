as yet unclassified
m054IntroduceOAuth
	"Create empty settings"
	#(hep:oauth:clientId hep:oauth:secret hep:api:url) do: [ :each |
		self db propertyAt: each default: [''] ]