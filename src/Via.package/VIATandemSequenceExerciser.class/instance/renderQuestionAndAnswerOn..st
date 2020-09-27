rendering
renderQuestionAndAnswerOn: html
	| id |
	id := html nextId.
	html div class: 'questionAndAnswer'; with: [
		self renderQuestionOn: html.
		html div class: 'answer'; with: [
			html div
				ukToggleFadeTarget: ('#', id);
				class: 'answerIcon';
				with: [
					html iconAnswer ].
			html div id: id; beHidden; with: [
				currentQAndA answerBrick acceptRenderingVisitor: parentExerciser on: html]]
	].
