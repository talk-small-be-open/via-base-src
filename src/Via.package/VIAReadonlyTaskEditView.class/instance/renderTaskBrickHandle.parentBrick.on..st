as yet unclassified
renderTaskBrickHandle: aTaskBrick parentBrick: aParent on: html
	html div class: 'taskBrickHandle'; with: [
		html text: aTaskBrick classDisplayName]