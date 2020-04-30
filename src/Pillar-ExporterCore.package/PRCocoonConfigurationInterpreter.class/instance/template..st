private-interpreting
template: template
	| file |
	file := self configuration baseDirectory / template.
	^ file exists
		ifTrue: [ PRTemplate for: file readStream ]
		ifFalse: [ PRTemplateError signal: 'Template error: ' , file pathString , ' not found.' ]