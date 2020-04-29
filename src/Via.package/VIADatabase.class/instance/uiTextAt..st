uitext
uiTextAt: aKey
	"Basiszugriff auf translation key, darin enthalten ist die language als suffix"
	^uiTexts at: aKey ifAbsent: [nil]