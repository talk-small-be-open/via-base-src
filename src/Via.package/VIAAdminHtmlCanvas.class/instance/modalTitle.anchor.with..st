as yet unclassified
modalTitle: aTitle anchor: anAnchorString with: aRenderable
	| id |
	id := self nextId.
	
	self anchor
		class: 'clickAction';
		onClick: (self jQuery id: id) show;
		with: anAnchorString.
	
	self div
		id: id;
		onClick: (self jQuery this hide);
		class: 'modalBackground';
		with: [
			self div class: 'modalDialog'; with: [
				self heading: [
					self span: aTitle.
					self div
						class: 'pull-right';
						onClick: (self jQuery id: id) hide;
						with: [
							self iconClose ]
					
				].
				self render: aRenderable]]