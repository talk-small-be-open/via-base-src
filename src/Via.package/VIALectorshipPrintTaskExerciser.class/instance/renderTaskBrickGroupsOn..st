rendering
renderTaskBrickGroupsOn: html
	taskBrickGroups ifNotEmpty: [
		html div with: [
			taskBrickGroups do: [:eachGroup |
				html div
					class: 'taskGroup taskBrickGroup bottomTaskBrickGroup';
					with: [
						html div class: 'title'; with: eachGroup title.
						eachGroup children do: [:each |
							html div class: 'taskGroupItem'; with: [
								each acceptRenderingVisitor: self on: html]]]]]]