rendering-visitor
renderTaskBrickGroup: aTaskBrickGroup on: html
	| listId |
	
	listId := html nextId.

	self renderInputEditorFor: aTaskBrickGroup on: html with: [

		html label with: 'Title of group'.
		html textInput style: 'width: 50em'; on: #title of: aTaskBrickGroup.
		html label with: 'Restricted to'.
		html multiSelect
			list: VIAUser allRoles;
			on: #userRoles of: aTaskBrickGroup.

		html unorderedList
			id: listId;
			script: ((html jsSortable)
"OPTIMIZE: filter: Nur erlaubte bricks akzeptieren, sonst kann man von aussen etwas falsches reindroppen"			
				group: 'taskBricksSortableList';
				draggable: 'li.taskChild';
				handle: '.taskBrickHandle';
				ghostClass: 'insertPlaceholder';
				onSort: (html jQuery ajax
					callback: [:values | self resetChildrenOf: aTaskBrickGroup like: values]
					passengers: ((html jQuery id: listId) children: 'li.taskChild')
				)
			);
			class: 'taskBricks';
			with: [
			
				aTaskBrickGroup children do: [:each |
					html listItem passenger: each; class: 'taskChild'; class: each className; with: [
						self renderTaskBrickHandle: each parentBrick: aTaskBrickGroup on: html.
						each acceptRenderingVisitor: self on: html]]].
		
"		html div with: 'Add an element:'."
		(VIADisplayOnlyTaskBrick allAuthorReady sortedBy: #displayName) do: [:each |
			html submitButton
				class: 'button small';
				callback: [aTaskBrickGroup addChild: (each new)];
				with: '+ ', each displayName.
			html space]]