as yet unclassified
modalTitle: aTitle anchor: anAnchorString with: aRenderable
	| id |
	id := self nextId.
	
	self anchor
		class: 'clickAction';
		onClick: (self jQuery id: id) toggle;
		with: anAnchorString.
	
	self div
		id: id;
		onClick: (self jQuery this toggle);
		class: 'modalBackground';
		with: [
			self div class: 'modalDialog'; with: [
				self heading: aTitle.
				self render: aRenderable]]