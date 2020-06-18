as yet unclassified
modalTitle: aTitle anchor: anAnchorString with: aRenderable
	| id |
	id := self nextId.
	
	self span
		onClick: (self jQuery id: id) toggle;
		with: anAnchorString.
	
	self div
		id: id;
		style: 'display:none;';
		with: [
			self heading: aTitle.
			self render: aRenderable]