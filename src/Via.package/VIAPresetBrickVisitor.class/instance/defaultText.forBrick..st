as yet unclassified
defaultText: aKeyFragment forBrick: aTaskBrick
	| key |
	key := 'default:', aTaskBrick className, ':', aKeyFragment.
	^ key tl: website language