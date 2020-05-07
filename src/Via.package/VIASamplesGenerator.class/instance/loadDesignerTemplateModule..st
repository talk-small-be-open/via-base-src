as yet unclassified
loadDesignerTemplateModule: aWebsite
	| module task title |
	
	title := 'Designer Vorlage'.
	
	module := aWebsite data findModuleByTitle: title.
	
	module ifNil: [
		module := self loadModule: aWebsite.
		module title: title].

	module clear.
	
	task := self createCompositeTask.
	module addTask: task.
	task addChild: self createClozeText.

	task := self createCompositeTask.
	module addTask: task.
	task addChild: self createHighlightAreas.

	task := self createCompositeTask.
	module addTask: task.
	task addChild: self createMapPairs.

	task := self createCompositeTask.
	module addTask: task.
	task addChild: self createVideoPlayer.

	task := self createCompositeTask.
	module addTask: task.
	task addChild: self createAudioPlayer.