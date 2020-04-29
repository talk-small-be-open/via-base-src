as yet unclassified
createMapPairs
	| task pair |

	task := VIAMapPairs new.

	pair := task addNewPair.
	pair leftPillar pillarString: 'links'.
	pair rightPillar pillarString: 'rechts'.

	pair := task addNewPair.
	pair leftPillar pillarString: '""schwarz""'.
	pair rightPillar pillarString: '""weiss""'.

	pair := task addNewPair.
	pair leftPillar pillarString: 'Harry Potter'.
	pair rightPillar pillarString: '+Wer ist es?>http://img3.wikia.nocookie.net/__cb20141122213655/harrypotter/images/thumb/b/b2/2001-Harry-Potter-and-the-Sorcerer-s-Stone-Promotional-Shoot-HQ-harry-potter-11097228-1600-1960.jpg/145px-2001-Harry-Potter-and-the-Sorcerer-s-Stone-Promotional-Shoot-HQ-harry-potter-11097228-1600-1960.jpg+'.

	^task