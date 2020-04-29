testing
isPublic
	"Gibt an, ob das Modul öffentlich sichtbar ist"
	^(self isReleased and: [self isExam not]) and: [self isPrivate not]