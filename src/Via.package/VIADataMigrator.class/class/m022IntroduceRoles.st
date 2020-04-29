as yet unclassified
m022IntroduceRoles
	VIAHelper allInstancesOfClass: VIAUser do: [:each |
		each initializeDefaultValues.
		(each instVarNamed: 'isAdmin') = true ifTrue: [
			each roles: #(admin)]
	].