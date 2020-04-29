as yet unclassified
m010MultipleSocialIds
	VIAUser allInstances do: [:each |
		each initializeDefaultValues.
		each addSocialId: (each instVarNamed: 'socialId')]