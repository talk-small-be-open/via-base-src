rendering
renderContentOn: html
	html heading: 'Modules'.
	self renderToolbarOn: html.

	batcher isEmpty ifFalse: [
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
					html tableData colSpan: (columnsCount - 1); with: [
						self renderModuleInfo: each on: html.
					html tableData class: 'actions extras'; with: [
						html anchor callback: [ self openMoreInfosFor: each ]; with: 'More info ...']
				]].
				self renderTasksOfModule: each canEdit: canEdit on: html.
		]].

		html div
			class: 'listBatcher';
			with: batcher
			
	]