as yet unclassified
loadUiTextsNoOverwrite
	"remove untranslated entries, so that they will be loaded from the file"

	"Upload..."

"	self isTranslationFilePresent ifTrue: [
		self translator cleanup.
		self translationFileSymbolValueLanguageDo: [:symbol :value :language |
			(self translator hasSymbol: symbol forLanguage: language) ifFalse: [
				self translator setSymbol: symbol to: value forLanguage: language]]]"