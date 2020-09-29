as yet unclassified
renderContentOn: html
	html scriptDefer: 'enableUnloadWarning();'.

	html heading t: 'exerciser:exam:title'.
	html ukBlockMuted with: [
		html t: 'exerciser:exam:info'].
	self renderTeacherInfoOn: html.
	self renderTitleOn: html.
	self renderBasicDetailInfoOn: html.
"	self renderMenuOn: html."
"	self renderScoreOn: html."
	self renderBodyOn: html.
	self renderFooterOn: html.
	
	html div class: 'submitExam'; with: [
		html ukSubmitButton
			class: 'submitExam';
"			popover: 'exerciser:exam:submit:info't;"
			callback: [self submitExam];
			with: [
				html t: 'exerciser:exam:submit'.
				html small t: 'exerciser:exam:submit:info'.			
			]
	]