rendering
renderActionButtonsOn: html
	html ukGrid
		class: 'uk-grid-small uk-child-width-auto@s uk-child-width-1-2';
		with: [
			html div: [
				html ukSubmitButton
					id: 'searchButton';
					class: 'defaultButton searchButton';
					class: 'uk-width-expand';
					callback: [self performSearch];
					t: 'searchForm:search' ].

			html div: [
				html ukSubmitButton
					class: 'showAll searchButton';
					class: 'uk-width-expand';
					callback: [self performBlankSearch];
					t: 'searchForm:showAll' ].

			self ifTeacher: [
				html div: [
					html ukSubmitButton
						class: 'showAll searchButton';
						class: 'uk-width-expand';
						callback: [self performExamsSearch];
						t: 'searchForm:showAllExams']].

			html div: [
				html ukButton
					class: 'searchButton';
					class: 'uk-width-expand';
					beSubmit;
					callback: [self toggleExtendedSearchAndPerform];
					t: (self isExtendedSearch ifTrue: ['searchForm:less'] ifFalse: ['searchForm:more']) ].
			
		]