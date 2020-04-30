accessing defaults
defaultLevel1
	<cocoonDefaultParameter:
		'A PRNumberingLevelConfiguration which say Pillar need to numbering level 1 titles and to render them with a roman number.'>
	^ PRLevelRomanConfiguration with: (Dictionary with: 'numbering' -> true with: 'size' -> 1)