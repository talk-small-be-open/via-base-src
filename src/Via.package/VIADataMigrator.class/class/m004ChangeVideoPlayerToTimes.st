as yet unclassified
m004ChangeVideoPlayerToTimes
	VIAVideoPlayer allInstances do: [:each |
		(each instVarNamed: 'startSeconds') ifNotBlank: [:sec |
			each startTime: (Time fromSeconds: sec asInteger).
			(each instVarNamed: 'endSeconds') ifNotBlank: [:secEnd |
				each endTime: (Time fromSeconds: secEnd asInteger).
			]
		]]