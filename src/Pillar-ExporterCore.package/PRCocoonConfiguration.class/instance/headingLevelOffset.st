accessing
headingLevelOffset
	<cocoonParameter:
		'Indicate how to convert from the level of a Pillar heading to the level of heading in your exported document.
	For example, a ==headingLevelOffset== of 3 converts a 1st level Pillar heading to an ==<h3>== in HTML.'>
	^ self propertyAt: 'headingLevelOffset' default: [ self defaultHeadingLevelOffset ]