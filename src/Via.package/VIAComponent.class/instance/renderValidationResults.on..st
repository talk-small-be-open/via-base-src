as yet unclassified
renderValidationResults: aValidationResult on: html
	"OPTIMIZE: Verschachtelte faileRules einzeln rausholen und rekursiv darstellen, statt eines verdichteten Strings"
	(aValidationResult notNil and: [aValidationResult isValid not]) ifTrue: [
		html div
			class: 'validationResults';
			with: [
				html div class: 'title'; t: 'validation:validationResults'.
				html div t: 'validation:thisObjectHasErrors'.
				html unorderedList
					with: [
						aValidationResult failedRules do: [:eachRule |
							html listItem: [
								eachRule
									renderErrorMessagesForLanguage: self session language
									on: html].
				]]]]