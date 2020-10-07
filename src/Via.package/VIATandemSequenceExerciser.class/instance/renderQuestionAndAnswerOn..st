rendering
renderQuestionAndAnswerOn: html
	| id |
	id := html nextId.
	html div class: 'questionAndAnswer current'; with: [
		self renderQuestionOn: html.
		html div class: 'answer'; class: self playerCss; with: [
			html div
				ukToggleFadeTarget: ('#', id);
				class: 'answerIcon';
				with: [
					html iconAnswer; t: 'tandemSequence:answer'; iconDropdown.
				].
			html div class: 'body'; id: id; beHidden; with: [
				currentQAndA answerBrick acceptRenderingVisitor: parentExerciser on: html]]
	].
