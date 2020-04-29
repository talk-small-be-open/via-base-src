rendering-visitor
renderTaskBrickGroup: aTaskBrickGroup on: html
	| listId |
	
	listId := html nextId.

	html div class: 'inputEditor'; with: [

		html label with: 'Title of group'.
		html textInput on: #title of: aTaskBrickGroup.

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
					html listItem passenger: each; class: 'taskChild'; with: [
						self renderTaskBrickHandle: each parentBrick: aTaskBrickGroup on: html.
						each acceptRenderingVisitor: self on: html]]].
		
		html label with: 'Add elements'.
		((VIADisplayOnlyTaskBrick allSubclasses select: #isAuthorReady) sortedBy: #displayName) do: [:each |
			html submitButton
				class: 'button';
				callback: [aTaskBrickGroup addChild: (each new)];
				with: '+ ', each displayName.
			html space]]