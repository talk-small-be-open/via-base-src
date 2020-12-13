enumerating
channelInfoDo: aBlock
	"aBlock with: channelName, uiTextKey, enabled"
	self channels do: [ :each |
		| data |
		data := self channelAt: each.
		aBlock value: each value: ('mailingChannel:', each asString) value: (data at: #enabled)
	]