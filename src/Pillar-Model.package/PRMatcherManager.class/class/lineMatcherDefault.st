accessing
lineMatcherDefault
	^ LineMatcherDefault ifNil: [ LineMatcherDefault := PRParagraph ]