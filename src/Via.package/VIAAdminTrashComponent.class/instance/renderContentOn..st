rendering
renderContentOn: html
	html heading: 'Trash'.
	html div: [
		html anchorButton
			callback: [self cleanupTrash];
			with: 'Remove old (> 180 days) entries'.
		html space.
		html anchorButton
			callback: [self clearTrash];
			with: 'REMOVE ALL (!)'].
	html table class: 'table table-bordered table-condensed'; with: [
		html tableHead: [ 
			html tableHeading: 'Name'.
			html tableHeading: 'Type'.
			html tableHeading: 'Deleted at'.
			html tableHeading.
		].
		html tableBody: [
			self wd trashedObjects do: [:each |
				| time object |
				time := each first.
				object := each second.
				
				html tableRow: [
					html tableData: object displayName.
					html tableData: object classDisplayName.
					html tableData: (VIAHelper germanDateAndTimeStringFor: time).
					html tableData: [
	"					html anchor
							callback: [self viewModel: object];
							with: 'Anzeigen'.
						html space."
						html anchor
							callback: [self restoreObject: object];
							with: 'Restore'.
						html space.
						html anchor
							callback: [self deleteObject: object];
							with: 'Delete']]]]]