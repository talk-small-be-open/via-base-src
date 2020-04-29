as yet unclassified
visitTableCell: aCell
	|  tag |
	tag := aCell isHeading
		ifTrue: [html tableHeading]
		ifFalse: [html tableData].
	aCell isAligned
		ifTrue: [
			aCell isAlignedLeft
				ifTrue: [tag style: 'text-align: left'].
			aCell isAlignedCenter
				ifTrue: [tag style: 'text-align: center'].
			aCell isAlignedRight
				ifTrue: [tag style: 'text-align: right']].
	tag with: [super visitTableCell: aCell]