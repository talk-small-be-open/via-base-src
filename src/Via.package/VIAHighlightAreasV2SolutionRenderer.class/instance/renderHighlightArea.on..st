as yet unclassified
renderHighlightArea: aHighlightArea on: html
	| answerHolder span |

	answerHolder := self exercise answerOf: aHighlightArea.

	span := html span
		class: 'highlightArea solution';
"		id: (id := html nextId)."

		class: 'answerWasCorrect' if: answerHolder isCorrect;
		class: 'answerWasWrong' if: answerHolder isWrong.

	
	self ifca: answerHolder isCorrect t: [
		"Als korrekt anzeigen und allfällige Markierungen darin entfernen"
		span
			class: 'correct'.
	].

	span with: [
		aHighlightArea text do: [:eachChar |
			self renderCharacter: eachChar on: html
	]].

	self renderCorrection: answerHolder showWrong: false on: html