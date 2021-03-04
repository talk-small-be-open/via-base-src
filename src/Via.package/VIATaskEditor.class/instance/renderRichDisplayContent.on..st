rendering-visitor
renderRichDisplayContent: aRichDisplayContent on: html
	| listId |
	
	listId := html nextId.

	self renderInputEditorFor: aRichDisplayContent on: html with: [
		html unorderedList
			id: listId;
			script: ((html jsSortable)
"OPTIMIZE: filter: Nur erlaubte bricks akzeptieren, sonst kann man von aussen etwas falsches reindroppen"			
				group: 'taskBricksSortableList';
				draggable: 'li.taskChild';
				handle: '.taskBrickHandle';
				ghostClass: 'insertPlaceholder';
				onSort: (html jQuery ajax
					callback: [:values | self resetChildrenOf: aRichDisplayContent like: values]
					passengers: ((html jQuery id: listId) children: 'li.taskChild')
				)
			);
			class: 'taskBricks';
			with: [
			
				aRichDisplayContent children do: [:each |
					html listItem passenger: each; class: 'taskChild'; with: [
						self renderTaskBrickHandle: each parentBrick: aRichDisplayContent on: html.
						each acceptRenderingVisitor: self on: html]]].
		
"		html div with: 'Add an element:'."
		(VIADisplayOnlyTaskBrick allAuthorReady sortedBy: #displayName) do: [:each |
			html submitButton
				class: 'button small';
				callback: [aRichDisplayContent addChild: (each new)];
				with: '+ ', each displayName.
			html space]]