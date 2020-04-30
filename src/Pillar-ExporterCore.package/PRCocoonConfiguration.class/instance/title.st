accessing
title
	<cocoonParameter: 'Indicate the main title of the document.'>
	^ self propertyAt: 'title' default: [ self defaultTitle ]