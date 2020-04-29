*Via
isTranslationKey
	"Quick & dirty test, if it is in the syntax of a translation key"
	^(self includes: $:) and: [(self includes: Character space) not]