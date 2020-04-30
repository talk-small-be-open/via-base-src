accessing
template
	<cocoonParameter: 'Indicate the overall structure of the exported documents.'>
	^ self propertyAt: 'template' default: [ self defaultTemplate ]