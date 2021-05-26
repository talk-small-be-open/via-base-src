as yet unclassified
visitInternalLink: anInternalLink
	anInternalLink hasAnchor ifTrue: [
		html anchor
			url: ('#', anInternalLink anchor);
			with: [
				super visitInternalLink: anInternalLink ]]