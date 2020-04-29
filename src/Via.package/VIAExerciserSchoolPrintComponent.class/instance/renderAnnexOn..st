rendering
renderAnnexOn: html
	(footnotes notEmpty or: [taskBrickGroups notEmpty]) ifTrue: [
		html div class: 'annex'; with: [
			self renderFootnotesOn: html.
			self renderTaskBrickGroupsOn: html]]