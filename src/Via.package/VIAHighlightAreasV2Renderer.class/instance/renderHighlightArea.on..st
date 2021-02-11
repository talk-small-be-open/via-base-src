as yet unclassified
renderHighlightArea: aHighlightArea on: html
	| jsEventHandler answerHolder id span |

	answerHolder := self exercise answerOf: aHighlightArea.

	jsEventHandler := (html jQuery ajax
		callback: [:value | answerHolder value: value]
		value: (JSStream on: 'text.trim()');
		onError: (html javascript alert: 'Fehler beim Speichern der Markierung!'))
			asFunction: #(event text).

	span := html span
		class: 'highlightArea';
		id: (id := html nextId);
		script: (html jQuery this on: 'via:highlightinarea' do: jsEventHandler).
	
	self ifca: answerHolder isCorrect t: [
		"Als korrekt anzeigen und allfällige Markierungen darin entfernen"
		span
			class: 'correct'.
"			script: (JSStream on: 'highlightAreas_removeHighlight($(""#',id,'"")[0])')"
	].

	span with: [
		aHighlightArea text do: [:eachChar |
			self renderCharacter: eachChar on: html
	]].

	self renderCorrection: answerHolder showWrong: false on: html