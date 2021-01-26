rendering
renderSearchTypeOn: html

	html radioGroup
		callback: [:value | searchType := value];
		selected: searchType;
		with: [ :rg |
			html label: [
				rg radioButton value: #all.
				html space.
				html text: 'ALL' ].
			html space; space.
			mediaClasses do: [ :each |
				html label: [
					rg radioButton value: each.
					html space.
					html text: each displayName ].
				html space; space.
			 ]]