rendering
renderContentOn: html
	html heading: 'Modules'.
	self renderToolbarOn: html.

	html div
		class: 'listBatcher';
		with: batcher.
		
	html table class: 'adminModules'; with: [
"		self modules do: [:each |"
		batcher batch do: [:each |
			| canEdit |
			canEdit := self canEditModule: each.
			html tableRow class: 'selected' if: (selectedModule = each); with: [
				self renderModule: each canEdit: canEdit on: html].
			html tableRow class: 'moduleInfos'; with: [
				html tableData colSpan: columnsCount; with: [
					self renderModuleInfo: each on: html.
			]].
			self renderTasksOfModule: each canEdit: canEdit on: html.
	]].

	html div
		class: 'listBatcher';
		with: batcher