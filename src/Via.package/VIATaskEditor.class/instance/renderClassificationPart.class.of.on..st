rendering
renderClassificationPart: aSymbol class: aTagClass of: aCompositeTask on: html
	html label: aSymbol.
	html multiSelect
		size: 4;
		labels: [:each | each displayName];
		list: (aTagClass allForWebsite: self website);
		on: aSymbol of: aCompositeTask classification.
	html break.
	html textInput
		class: 'small';
		style: 'width:7em;margin-right: 3px';
		callback: [:value | self createNewTags: value type: aTagClass].
	html submitButton
		class: 'small';
		with: [ html iconAdd ]