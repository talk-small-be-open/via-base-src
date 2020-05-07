initialization
initializeDefaultValues
	modules ifNil: [modules := OrderedCollection new].
	categories ifNil: [categories := OrderedCollection new].
	portfolios ifNil: [portfolios := OrderedCollection new].
	assets ifNil: [assets := OrderedCollection new].
	properties ifNil: [properties := IdentityDictionary new].
	tags ifNil: [tags := Set new].
	applicationCommands ifNil: [applicationCommands := RcKeyValueDictionary new].
	exams ifNil: [exams := OrderedCollection new].
	mailer ifNil: [mailer := VIAMailer new website: website; yourself].
	users ifNil: [users := OrderedCollection new].


"global	self propertyAt: #uploadsBasePath ifAbsentPut: ['/tmp']."
"global	self propertyAt: #fileStoragePath ifAbsentPut: ['/Users/dassi/code/smalltalk/seaside/321via/web_root']."
	self propertyAt: #assetsRelativePath ifAbsentPut: ['assets'].