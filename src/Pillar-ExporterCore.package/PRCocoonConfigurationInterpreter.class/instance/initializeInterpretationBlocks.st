initialize
initializeInterpretationBlocks
	super initializeInterpretationBlocks.
	interpretationBlocks
		at: 'defaultScriptLanguage' put: [ :value | self defaultScriptLanguage: value ];
		at: 'newLine' put: [ :value | self newLine: value ];
		at: 'outputFile' put: [ :value | self outputFile: value ];
		at: 'outputType' put: [ :value | self outputType: value ];
		at: 'level1' put: [ :value | self level1: value ];
		at: 'level2' put: [ :value | self level2: value ];
		at: 'level3' put: [ :value | self level3: value ];
		at: 'level4' put: [ :value | self level4: value ];
		at: 'level5' put: [ :value | self level5: value ];
		at: 'template' put: [ :value | self template: value ]