as yet unclassified
defaultPillar: aKeyFragment forBrick: aTaskBrick
	| key |
	key := 'default:', aTaskBrick className, ':', aKeyFragment.

	^ (VIADatabase current getUiText: key language: website language)