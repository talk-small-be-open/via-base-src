testing
isFileDefined
	"Prüfe, ob die minimal Angaben vorhanden sind"
	^fileName notBlank and: [fileBasePath notBlank]