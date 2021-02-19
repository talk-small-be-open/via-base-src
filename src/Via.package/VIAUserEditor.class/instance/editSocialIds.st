as yet unclassified
editSocialIds
	| ids |
	ids := self request: 'IDs comma separated' default: model socialIdsString.
	
	ids ifNotBlank: [ model socialIdsString: ids ]