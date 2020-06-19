rendering-visitor
renderCompositeTask: aCompositeTask on: html
	| listId |
	
	html label with: 'Title of task'.
	html textInput on: #title of: aCompositeTask.

	html skRow: [
		html skColumnWidth: 'three' with: [
			self renderClassificationPart: #topicTags class: VIATopicTag of: aCompositeTask on: html ].
		html skColumnWidth: 'three' with: [
			self renderClassificationPart: #contextTags class: VIAContextTag of: aCompositeTask on: html ].
		html skColumnWidth: 'three' with: [
			self renderClassificationPart: #activityTypeTags class: VIAActivityTypeTag of: aCompositeTask on: html ].
		html skColumnWidth: 'three' with: [
			self renderClassificationPart: #grammarTopicTags class: VIAGrammarTopicTag of: aCompositeTask on: html ]].

	listId := html nextId.
	
	html unorderedList
		id: listId;
		script: ((html jsSortable)
			group: 'taskBricksSortableList';
			draggable: 'li.taskChild';
			handle: '.taskBrickHandle';
			ghostClass: 'insertPlaceholder';
			onSort: (html jQuery ajax
				callback: [:values | self resetChildrenOf: aCompositeTask like: values]
				passengers: ((html jQuery id: listId) children: 'li.taskChild')
			)
		);
		class: 'taskBricks';
		with: [
		
			aCompositeTask children do: [:each |
				html listItem passenger: each; class: 'taskChild'; with: [
					self renderTaskBrickHandle: each parentBrick: aCompositeTask on: html.
					each acceptRenderingVisitor: self on: html]]].
	
"	html label with: 'Add elements'."

	authorBrickCategories do: [:cat |
		html div: [
			html strong t: ('admin:brickCategory:', cat)].
		(authorBricks at: cat) do: [:each |
			html submitButton
				title: (each authorInfoKey)t;
				class: 'button small popover';
				callback: [aCompositeTask addChild: (each new)];
				with: '+ ', each displayName.
			html space]].
	
	html div: [
		html strong: 'Importing'].
		html submitButton
			class: 'button small';
			callback: [self importFromOtherTaskInto: aCompositeTask];
			with: '+ Import copy of another task ... '.