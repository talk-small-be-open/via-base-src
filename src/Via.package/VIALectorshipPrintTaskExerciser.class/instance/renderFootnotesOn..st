rendering
renderFootnotesOn: html
	footnotes ifNotEmpty: [
		html div class: 'footnotes'; with: [
			footnotes withIndexDo: [:each :index |
				html span: [
					html text: (index asString, ')').
					html space.
					html pillarString: each.
					html space: 3]]]]