actions
releaseModule: aModule
	aModule moduleHistory hasReleasedVersions
		ifTrue: [
			(self confirmYesNo: 'admin:reallyPublishModuleQM') ifTrue: [
				self flashMessage: 'Published NEW version of existing module.'.
				aModule releaseNow]]
		ifFalse: [
			self flashMessage: 'Published FIRST version of new module.'.
			aModule releaseNow]