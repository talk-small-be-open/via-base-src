private
transform: aDocument
	"PRAnchorOfSection is desactivate, we need to manage the escape of the characters."

	^ PRScriptLineNumber new
		configuration: self;
		start:
				(PRScriptEvaluator new
						configuration: self;
						start:
								(PRScriptFromFile new
										configuration: self;
										start:
												(PRFileInclusion new
														configuration: self;
														start: aDocument;
														topNode);
										topNode);
						topNode);
		topNode	"PRAnchorOfSection new start: (); topNode"