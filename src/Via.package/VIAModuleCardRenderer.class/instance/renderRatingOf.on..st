as yet unclassified
renderRatingOf: aModule on: html
	| r |

	self ifFeature: #module:showRatingAverage then: [
		r := aModule rating value ceiling.

		html div class: 'rating uk-visible@s'; with: [
			r timesRepeat: [
				html iconStar
			].
	"		1 to: 5 do: [:index |
				index <= r ifTrue: [html iconStar].
				index > r ifTrue: [html iconStarEmpty].
			]"
		]]