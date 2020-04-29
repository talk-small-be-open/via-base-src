as yet unclassified
m025FixModuleHistory
	VIAHelper allInstancesOfClass: VIAModule do: [:each |
		each moduleHistory versions ifEmpty: [
			each moduleHistory addVersion: each]
	].