private
transformForIncludeFile: aDocument
	^ PRScriptEvaluator new configuration: self; start: (PRFileInclusion new  configuration: self; start:aDocument; topNode); topNode