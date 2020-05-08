as yet unclassified
renderContentOn: html

"	self renderModulesShowReelOn: html"
	
"	self renderTutorialOn: html."
	html heading t: 'myHome:title'.
	html paragraph with: [
		html t: 'myHome:info'].

	self renderSearchOn: html.
	html break; break.
	self renderAppetizerOn: html

"	self renderShowRoomOn: html."