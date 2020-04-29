as yet unclassified
renderHighlightArea: aHighlightArea on: html
	| jsEventHandler answerHolder id span |

	answerHolder := self exercise answerOf: aHighlightArea.

	jsEventHandler := (html jQuery ajax
		callback: [:value | answerHolder value: value]
		value: (JSStream on: 'newHighlights.getText().trim()');
		onError: (html javascript alert: 'Fehler beim Speichern der Markierung!'))
			asFunction: #(event newHighlights highlighter).

	span := html span
		class: 'highlightArea';
		id: (id := html nextId);
		script: (html jQuery this on: 'via:highlight' do: jsEventHandler).
	
	self ifca: answerHolder isCorrect t: [
		"Als korrekt anzeigen und allfällige Markierungen darin entfernen"
		span
			class: 'correct';
			script: (JSStream on: 'highlightAreas_removeHighlight($("#',id,'")[0])')
	].

	span with: aHighlightArea text.

	self renderCorrection: answerHolder showWrong: false on: html.

