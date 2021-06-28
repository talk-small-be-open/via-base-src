as yet unclassified
initialRequest: aRequest
	| urlPath |

	super initialRequest: aRequest.

	self cookieLogin: aRequest.
	
	self socialLogin: aRequest.
	
	"Get the command, if any given"
	aRequest at: 'c' ifPresent: [:value |
		command := self wd findApplicationCommandByCode: value].

	"Beta?"
	"OPTIMIZE: Secure it"
"	aRequest at: 'beta' ifPresent: [:value | self session isBeta: true]."
	
	isEmbedded := self requestContext request includesKey: 'embed'.
	
	"Check for some direct access URL patterns and rewrite them into commands"
	urlPath := aRequest url path copy.

	"Remove fixed application name in the path, if present (typical /app)"
	urlPath ifNotBlank: [
		urlPath removeFirst].
	
	urlPath ifNotBlank: [
		| commandName |

		commandName := urlPath first.

		"Direct URL to module"
		(commandName = 'modules') ifTrue: [
			| module |
			module := self wd findModuleBySlug: urlPath.

			module ifNotNil: [

				"Specific version?"
				aRequest at: 'moduleVersion' ifPresent: [:version |
					| module2 |
					module2 := module moduleHistory getVersion: version asInteger.
					module2 ifNotNil: [
						module := module2
					]
				].
			
				"Special URL to module assets download"
				aRequest at: 'media' ifPresent: [:value |
					command := VIADownloadAssetsCommand new.
					command module: module].
			
				self session gotoModule: module]].
		
		"Direct URL to exam"
		(commandName = 'exam') ifTrue: [
			| exam uuid |
			uuid := [UUID fromString36: urlPath second] ifError: [nil].
			uuid ifNotNil: [
				exam := self wd findExamByUuid: uuid.
				exam ifNotNil: [
					command := VIAGotoExamCommand new.
					command exam: exam.
				]
			]
		].

		"Direct URL to disclaimer"
		(commandName = 'disclaimer') ifTrue: [
			command := VIAShowDisclaimerCommand new.
		].

		"Direct URL to email settings"
		(commandName = 'mailsettings') ifTrue: [
			command := VIAShowMailSettingsCommand new.
		].

		"Callback after SSO redirect (OAuth, ...)"
		(commandName = 'sso') ifTrue: [
			self loginFromExternalCallback: aRequest
		].
	
		"Direct URL to local login (instead of usual OAuth)"
		(commandName = 'locallogin') ifTrue: [
			command := VIALocalLoginCommand new.
		].

		
	].


		"Default: We think that it is a menu entry command"
"		command ifNil: [
			command := SIRSelectMenuEntryCommand new
				menuEntryUrlKey: commandName;
				yourself]]."