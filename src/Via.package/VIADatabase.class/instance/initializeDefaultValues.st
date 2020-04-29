initialization
initializeDefaultValues
	users ifNil: [users := OrderedCollection new].
	modules ifNil: [modules := OrderedCollection new].
	categories ifNil: [categories := OrderedCollection new].
	pages ifNil: [pages := OrderedCollection new].
	portfolios ifNil: [portfolios := OrderedCollection new].
	assets ifNil: [assets := OrderedCollection new].
	properties ifNil: [properties := IdentityDictionary new].
	tags ifNil: [tags := Set new].
	searchEngine ifNil: [searchEngine := VIASearchEngine new].
	uiTexts ifNil: [uiTexts := Dictionary new].
	trashedObjects ifNil: [trashedObjects := OrderedCollection new].
	mailer ifNil: [mailer := VIAMailer new].
	applicationCommands ifNil: [applicationCommands := RcKeyValueDictionary new].
	exams ifNil: [exams := OrderedCollection new].
	websites ifNil: [websites := OrderedCollection new].
	websiteDatas ifNil: [websiteDatas := IdentityDictionary new].

	self propertyAt: #uploadsBasePath ifAbsentPut: ['/tmp'].
	self propertyAt: #fileStoragePath ifAbsentPut: ['/Users/dassi/code/smalltalk/seaside/321via/web_root'].