rendering
renderTaskBrickHandle: aTaskBrick parentBrick: aParent on: html
	html div class: 'taskBrickHandle'; with: [
		html text: aTaskBrick classShortDisplayName.
		html space.
		html button
			beSubmit;
			class: 'deleteButton';
			title: 'Delete';
			callback: [self removeTaskBrick: aTaskBrick from: aParent];
			with: 'X']