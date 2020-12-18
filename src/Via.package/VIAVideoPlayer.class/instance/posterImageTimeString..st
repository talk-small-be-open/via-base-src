accessing
posterImageTimeString: aString
	| old |

	old := posterImageTime.
	posterImageTime := aString ifBlank: [nil] ifNotBlank: [:s | Duration fromVideoTime: s].
	
	old ~= posterImageTime ifTrue: [
		self buildPosterImage
	]