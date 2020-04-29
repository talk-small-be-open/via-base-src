as yet unclassified
renderContentOn: html
	html heading t: 'exerciser:exam:title'.
	html ukBlockMuted t: 'exerciser:examView:info'.
"	self renderTeacherInfoOn: html."
	self renderTitleOn: html.
	self renderBasicDetailInfoOn: html.
"	self renderMenuOn: html."
"	self renderScoreOn: html."
	self renderBodyOn: html.
	self renderFooterOn: html.