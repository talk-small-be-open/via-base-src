rendering
renderToolbarOn: html
	html skAnchorButton
		callback: [self createModule];
		with: '+ Create new module'.
	html space.
	html skAnchorButton
		callback: [ self showAll ];
		with: 'Show all'.

	html form
		class: 'searchForm';
		with: [
			html span: 'Index: '.
			html textInput on: #indexCodePartial of: self.
			html space.
			html span: 'Text: '.
			html textInput on: #searchString of: self.
			html space.
			html label: [
				html checkbox
					on: #showOnlyMy of: self.
				html space.
				html text: 'my modules only'].
			html space: 3.
			html span: 'Includes: '.
			html select
				beOptional;
				list: brickTypes;
				labels: [ :each | each displayName ];
				on: #searchBrickType of: self.
			html space.
			html submitButton callback: ["do nothing special"]; with: 'Search'.
			html hiddenInput callback: [self performSearch].

			html space.
 ]