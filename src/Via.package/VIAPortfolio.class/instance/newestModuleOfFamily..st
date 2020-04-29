as yet unclassified
newestModuleOfFamily: aModule
	^(self modulesOfFamily: aModule) detectMax: [:each | each versionNumber]