as yet unclassified
commonImagemagickOptions
	| quality animatedGifOptions |

	quality := ''.
	self isJpeg ifTrue: [ 
		quality := self containsTextInImage ifTrue: [ ' -quality 95 ' ] ifFalse: [ ' -quality 80 ' ]
	].
	animatedGifOptions := ''.
	self isAnimatedGif ifTrue: [ animatedGifOptions := ' -layers optimize +remap ' ].

	^ (animatedGifOptions, ' +repage -auto-orient -strip ', quality)
