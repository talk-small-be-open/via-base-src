actions
releaseModule: aModule
	aModule moduleHistory hasReleasedVersions
		ifTrue: [
			(self confirmYesNo: 'This will un-release a previous version of that module!') ifTrue: [
				self flashMessage: 'Published NEW version of existing module.'.
				aModule releaseNow]]
		ifFalse: [
			self flashMessage: 'Published FIRST version of new module.'.
			aModule releaseNow]