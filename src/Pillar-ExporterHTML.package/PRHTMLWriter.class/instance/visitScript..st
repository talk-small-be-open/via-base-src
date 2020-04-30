visiting-document
visitScript: aScript
	canvas tag
		name: 'figure';
		with: [ 
					canvas tag
						name: 'pre';
						with: [ 
									| code language |
									code := canvas tag
										name: 'code';
										yourself.
									language := self languageForScript: aScript.
									language isSyntaxHighlightingPossible
										ifTrue: [ code parameterAt: 'class' put: language printString ].
									code with: [ canvas lines: aScript text ] ].
					canvas tag
						name: 'figcaption';
						with: [ 
									aScript hasLabel
										ifTrue: [ 
											canvas tag
												name: 'a';
												parameterAt: 'name' put: aScript label;
												with: ''.
											self writeCounterForScript: aScript ].
									aScript hasCaption
										ifTrue: [ self visitText: aScript caption ] ] ]